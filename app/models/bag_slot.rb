class BagSlot < ActiveRecord::Base
  validates_presence_of :item
  belongs_to :item
  belongs_to :bag
  
  def icon
    @icon ||= item.icon
  end
  
  def name
    @name ||= item.name
  end
  
end
