class EqClass < ActiveRecord::Base
  has_many :race_to_classes
  has_many :races, :through => :race_to_classes
  
  def self.for_select
    self.all.map {|r| [r.name, r.id]}
  end
  
end
