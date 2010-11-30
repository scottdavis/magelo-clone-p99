class ItemSearch
  COLUMNS = [:astr, :asta, :aagi, :adex, :awis, :aint, :acha, :hp, :mana, :itemtype, :pr, :mr, :dr, :fr, :cr]
  attr_accessor :name, :classes, :slots, :limit
  COLUMNS.each do |col|
    attr_accessor col
  end
  def initialize(params = {})
    limit = 30
    params.each do |k,v|
      send("#{k}=", v)
    end
  end
  
  
  def items(page = nil)
    @items ||= find_items(page)
  end

  private

  def find_items(page = nil)
    Item.where(conditions).order('name').paginate(:page => page, :per_page => 35)
  end
  
  
  def name_conditions
    ["LOWER(items.name) LIKE  ?", "%#{name.downcase}%"] unless name.blank?
  end
  
  def classes_conditions
    ["items.classes & ?", classes] unless classes.blank?
  end
  
  def slots_conditions
    ["items.slots & ?", slots] unless slots.blank?
  end
  
  def str_conditions
    ["items.astr >= ?", astr] unless astr.blank?
  end
  
  def sta_conditions
    ["items.asta >= ?", asta] unless asta.blank?
  end

  def agi_conditions
    ["items.aagi >= ?", aagi] unless aagi.blank?
  end
  
  def dex_conditions
    ["items.asta >= ?", adex] unless adex.blank?
  end
  
  def wis_conditions
    ["items.awis >= ?", awis] unless awis.blank?
  end
  
  def int_conditions
    ["items.aint >= ?", aint] unless aint.blank?
  end
  
  def cha_conditions
    ["items.acha >= ?", acha] unless acha.blank?
  end
  
  def hp_conditions
    ["items.hp >= ?", hp] unless hp.blank?
  end
  
  def mana_conditions
    ["items.mana >= ?", mana] unless mana.blank?
  end
  
  def pr_conditions
    ["items.pr >= ?", pr] unless pr.blank?
  end
  
  def mr_conditions
    ["items.mr >= ?", mr] unless mr.blank?
  end
    
  def dr_conditions
    ["items.dr >= ?", dr] unless dr.blank?
  end
  
  def fr_conditions
    ["items.fr >= ?", fr] unless fr.blank?
  end

  def cr_conditions
    ["items.cr >= ?", cr] unless cr.blank?
  end

  def hidden_conditions
    ["items.hidden = ?", false]
  end

  def conditions
    [conditions_clauses.join(' AND '), *conditions_options]
  end

  def conditions_clauses
    conditions_parts.map { |condition| condition.first }
  end

  def conditions_options
    conditions_parts.map { |condition| condition[1..-1] }.flatten
  end

  def conditions_parts
    private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
  end
end