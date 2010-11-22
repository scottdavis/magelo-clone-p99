class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.string :problem_object_type
      t.string :problem_id
      t.text :description
      t.boolean :fixed, :default => false
      t.belongs_to :user
      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
