class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.string :name
      t.string :surname
      t.integer :level
      t.string :deity
      t.string :guild
      t.belongs_to :race
      t.belongs_to :eq_class
      t.integer :level_percent
      [:str, :sta, :agi, :dex, :wis, :int, :cha, :ac, :atk, :pr, :mr, :dr, :fr, :cr].each do |stat|
        t.integer stat
      end
      t.belongs_to :user
      [:lear, :neck, :face, :head, :rear, :lring, :lwrist, :arm, :hand, :rwrist, :rring, :shoulder, :chest, :back, :waist, :leg, :foot, :primary, :secondary, :range, :ammo].each do |inv|
        t.integer "#{inv}_id"
      end
      t.timestamps
    end
  end

  def self.down
    drop_table :characters
  end
end
