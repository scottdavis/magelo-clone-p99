class Bag < ActiveRecord::Base
  has_many :bag_slots
  belongs_to :item
  belongs_to :character
  
  before_create :check_num_bags
  
  def icon
    @icon ||= item.icon
  end
  
  def slots
    @slots ||= item.bagslots
  end
  
  def name
    @name ||= item.name
  end
  
private

  def check_num_bags
    return true if character.bags.size < 8
    false
  end
  
end
