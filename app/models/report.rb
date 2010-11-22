class Report < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :problem_object_type, :problem_id, :description, :user_id
end
