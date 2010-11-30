class Item < ActiveRecord::Base
  STATS = [:str, :sta, :agi, :dex, :wis, :int, :cha]
  STATS.each do |stat|
    class_eval <<-EOS
      def #{stat}
        a#{stat}
      end
    EOS
  end

  def effect?
    clickeffect > -1
  end
  
  def proc?
    proceffect > -1
  end
  
  def proc
    return if proceffect < 0
    @proc ||= Spell.find(proceffect)
  end
  
  def effect
    return if clickeffect < 0
    @effect ||= Spell.find(clickeffect)
  end

  def sv_magic
    mr
  end
  
  def sv_fire
    fr
  end
  
  def sv_poison
    pr
  end
  
  def sv_cold
    cr
  end
  
  def sv_disease
    dr
  end
  
  def lore?
    loreflag == 1
  end
  
  def is_magic?
    magic == 1
  end
  
  def norent?
    norent == 0
  end
  
  def nodrop?
    nodrop == 0
  end
  
  def range
    _range
  end
  
  def hide!
    self.hidden = true
    save(false)
  end
  
  def unhide!
    self.hidden = false
    save(false)
  end
  
end
