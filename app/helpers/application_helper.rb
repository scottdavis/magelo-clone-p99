module ApplicationHelper
  
  SIZE = %w(TINY SMALL MEDIUM LARGE GIANT GIANT)
  WEAPON_TYPE = ['1H Slashing', '2H Slashing', 'Piercing', '1H Blunt', '2H Blunt', 'Archery', 'Throwing', '2H Piercing', 'Hand to Hand']
  WEAPON_TYPE[45] = 'Hand to Hand'
  WEAPON_TYPE[19] = 'Throwing'
  
  def get_slot(item)
    slot = item.slots
    map = { 
      :head => 4, :face => 8, :ears => [2, 16], :neck => 32, :chest => 131072, 
      :back => 256, :shoulders => 64, :waist => 1048576, :arms => 128, :wrist => 1536,
      :hands => 4096, :legs => 262144, :feet => 524288, :primary => 8192, :secondary => 16384,
      :ammo => 2097152, :charm => 1, :range => 2048, :fingers => 98304
    }
    return "SLOT: #{do_map(slot, map)}" unless item.bagslots > 0
    "SLOTS: #{item.bagslots}"
  end
  
  def get_class(item)
    classes = item.classes
    return 'CLASS: ALL' if classes == (32767+32768)
    return 'CLASS: NONE' if classes == 0
    #return 'CLASS: BRD ROG' if classes == 384
    map = {  
      :war => 1, :clr => 2, :pal => 4, :rng => 8, :shd => 16, :dru => 32, :mnk => 64, :brd => 128,
      :rog => 256, :shm => 512, :nec => 1024, :wiz => 2048, :mag => 4096, :enc => 8192
    }

    "CLASS: #{do_map(classes, map)}"
  end
  
  def get_race(item)
    races = item.races
    return 'RACE: ALL' if races == 32767
    return 'RACE: NONE' if races == 0
    map = {
      :hum => 1, :bar => 2, :eru => 4, :elf => 8, :hie => 16, :def => 32, :hef => 64, :dwf => 128,
      :trl => 256, :ogr => 512, :hfl => 1024, :gnm => 2048, :iks => 4069
    }
    "RACE: #{do_map(races, map)}"
  end
  
  def get_icon(item)
    return if item.blank?
    image_tag("icons/#{item.icon}.gif", :alt => addslashes(item.name), :class => 'icon')
  end
  
  def get_stats(item)
    stats = []
    [:str, :sta, :agi, :dex, :wis, :int, :cha, :hp, :mana].each do |stat|
      stat_v = item.send(stat)
      unless stat_v == 0
        mod = '+' if stat_v > 0
        #mod = '-' if stat_v < 0
        stats << "#{stat.to_s.upcase}: #{mod}#{stat_v}"
      end
    end
    [:sv_poison, :sv_magic, :sv_disease, :sv_fire, :sv_cold].each do |stat|
      stat_v = item.send(stat)
      unless stat_v == 0
        mod = '+' if stat_v > 0
        stats << "#{stat.to_s.humanize.upcase}: #{mod}#{stat_v}"
      end
    end
    
    
    stats.join(' ')
  end
  
  def addslashes(str)
    str.gsub(/['"\\\x0]/,'\\\\\0')
  end
  
  def get_weight(item)
    item.weight/10.to_f
  end
  
  def get_size(item)
    "Size: #{SIZE[item.size]}"
  end
  
  def get_skill(item)
    return '' unless (0..WEAPON_TYPE.size).member?(item.itemtype) || [45, 19].member?(item.itemtype) 
    ratio = item.damage.to_f/item.delay.to_f unless item.delay == 0
    return "Skill: #{WEAPON_TYPE[item.itemtype]} DMG: #{item.damage} Delay: #{item.delay} Ratio: #{ratio.round(1)}" if item.itemtype > 1 && item.delay > 0 && item.damage > 0
  end
  
  def get_details(item)
    out = []
    if item.is_magic?
      out << 'MAGIC'
    end
    if item.lore? 
      out << 'LORE'
    end
    if item.nodrop?
      out << 'NO TRADE'
    end
    if item.norent?
      out << 'TEMPORARY'
    end
    out.join(' ')
  end
  
  private
  
  def do_map(integer, hash)
    out = []
    hash.each do |key, value|
      if value.is_a?(Array)
        value.each do |v|
          out << key.to_s.upcase if (integer&v)>0
        end
      else
        out << key.to_s.upcase if (integer&value)>0
      end
    end
    out.join(' ')
  end
  
  
end
