class Race < ActiveRecord::Base
  has_many :race_to_classes
  has_many :eq_class, :through => :race_to_classes
  validates_presence_of :name
  
  
  def self.for_select
    self.all.map {|r| [r.name, r.id]}
  end
  
end
