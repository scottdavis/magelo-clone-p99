module ReportsHelper
  
  def link_to_poly(klass)
    case klass.class.name
      when 'Item'
        return link_to klass.name, item_path(klass)
      when 'Spell'
        return link_to klass.name, spell_path(klass)
      when 'Profile'
        return link_to klass.name, profile_path(klass)
    end
  end
  
end
