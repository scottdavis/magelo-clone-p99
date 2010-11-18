module ProfilesHelper
  
  def show_double_stat(stat)
    "<span style='color:#7bff58'>#{stat}</span>/#{stat}".html_safe
  end
  
  def format_effect(spell)
    out = []
    out << "Effect: #{spell.name}"
    casttime = spell.cast_time.to_f * 0.002
    puts casttime
    casttime = 'instant' if casttime.floor < 1
    out << "(Casting Time: #{casttime})"
    out.join(' ')
  end
  
  def url_for_form?
    @character.new_record? ? profiles_path : profile_path(@character.id)
  end
  
  def method_for_form?
    @character.new_record? ? :post : :put
  end
  
  def filter_stat_name(stat)
    stat_y = stat.to_sym
    map = {
        :sta => 'Stamina', :agi => 'Agility', :dex => 'Dexterity', :str => 'Strength', :wis => 'Wisdom', :int => 'Intelligence',
        :cha => 'Charisma', :fr => 'Fire', :pr => 'Poison', :cr => 'Cold', :dr => 'Disease', :mr => 'Magic'
          }
    return map[stat_y] if map.include?(stat_y)
    stat
  end
  
  def filter_slot_name(slot)
    map = {
      :lear => 'Left Ear', :neck => 'Neck', :face => 'Face', :head => 'Head', :rear => 'Right Ear', 
      :lring => 'Left Ring', :lwrist => 'Left Wrist', 
      :arm => 'Arms', :hand => 'Hands', :rwrist => 'Right Wrist', :rring => 'Right Ring', :shoulder => 'Shoulder', 
      :chest => 'Chest', :back => 'Back', :waist => 'Waist', :leg => 'Legs', :foot => 'Feet', 
      :primary => 'Primary', :secondary => 'Secondary', :range => 'Range', :ammo => 'Ammo'
    }
    return map[slot]
  end
  
end
