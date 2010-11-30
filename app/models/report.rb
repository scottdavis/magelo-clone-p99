class Report < ActiveRecord::Base
  belongs_to :user
  belongs_to :problemable, :polymorphic => true
  validates_presence_of :problemable_type, :problemable_id, :description, :user_id
  scope :not_fixed, where(:fixed => false)
end
