require 'stats'
class Character < ActiveRecord::Base
  
  SLOTS = [:lear, :neck, :face, :head, :rear, :lring, :lwrist, :arm, :hand, :rwrist, :rring, :shoulder, :chest, :back, :waist, :leg, :foot, :primary, :secondary, :range, :ammo]
  STATS = [:str, :sta, :agi, :dex, :wis, :int, :cha]
  RESISTS = [:pr, :mr, :dr, :fr, :cr]
  belongs_to :user
  belongs_to :eq_class
  belongs_to :race
  has_many :bags, :include => :bag_slots
  validates_presence_of :user_id, :race_id, :eq_class_id, :name, :level
  (STATS + RESISTS).each do |stat|
    validates_presence_of stat
    validates_numericality_of stat
  end
  SLOTS.each do |slot|
    belongs_to slot, :class_name => "Item"
  end
  
  scope :with_slots, {
    :include => SLOTS + [:eq_class, :race]
  }
  
  validate :is_a_deity?, :valid_race_combo?, :stats_above_10?
  
  def stats_above_10?
    (STATS + RESISTS).each do |stat|
      val = send(stat)
      if val < 10
        errors.add(stat, "#{stat} must have a value greater then 10")
      end
    end
  end
  
  def is_a_deity?
    unless EqThing::DEITIES.include?(deity)
      errors.add(:deity, 'Not a Valid Diety')
    end
    true
  end
  
  def valid_race_combo?
    unless RaceToClass.exists?(:race_id => race_id, :eq_class_id => eq_class_id)
      errors.add('race', 'Invalid Race/Class Combo')
    end
    true
  end
  
  def all_slots
    SLOTS.map {|slot| send(slot)}
  end
  
  def total_hp
    (calc_base_hp(level, eq_class.name, sta) + item_hp)
  end
  
  def total_mana
    calc_max_mana(item_mana, level, eq_class.name, total_int, total_wis) 
  end
  
  def total_attack
    calc_max_attack(primary, total_str, item_attack, level, eq_class.name)
  end
  
  def item_attack
    @item_attack ||= (all_slots.map {|i| i.attack unless i.blank?}.compact.inject(0) {|sum, i| sum + i})
  end
  
  def item_hp
    @item_hp ||= (all_slots.map {|i| i.hp unless i.blank?}.compact.inject(0) {|sum, i| sum + i})
  end
  
  def item_mana
     @item_mana ||= (all_slots.map {|i| i.mana unless i.blank?}.compact.inject(0) {|sum, i| sum + i})
  end
  
  def total_ac_before_mod 
    @total_ac ||= (all_slots.map {|i| i.ac unless i.blank?}.compact.inject(0) {|sum, i| sum + i}) + get_acmod(level, total_agi)
  end
  
  def total_ac
    get_ac(get_acmod(level, total_agi), get_max_defense(eq_class.name, level), eq_class.name, total_ac_before_mod, level, race.name)
  end
  
  RESISTS.each do |stat|
    class_eval <<-EOS
      def total_#{stat}
        @t_#{stat} ||= (all_slots.map {|i| i.#{stat} unless i.blank?}.compact.inject(0) {|sum, i| sum + i}) + #{stat}
      end
    EOS
  end
  
  STATS.each do |stat|
    class_eval <<-EOS
      def total_#{stat}
        @t_#{stat} ||= (all_slots.map {|i| i.a#{stat} unless i.blank?}.compact.inject(0) {|sum, i| sum + i}) + #{stat}
      end
    EOS
  end
  
  def manaregen
    @t_manaregen ||= (all_slots.map {|i| i.manaregen unless i.blank?}.compact.inject(0) {|sum, i| sum + i}) 
  end
  
  
  def haste
    hastes = all_slots.compact.map {|i| i.haste unless i.haste == 0 || i.haste.blank?}
    unless hastes.blank?
      hastes = hastes.compact.sort
      return hastes.pop unless hastes.blank?
    end
    0
  end
  
  
  
end
