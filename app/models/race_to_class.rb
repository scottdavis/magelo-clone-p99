class RaceToClass < ActiveRecord::Base
  belongs_to :eq_class
  belongs_to :race
  validates_presence_of :race_id, :eq_class_id
end
