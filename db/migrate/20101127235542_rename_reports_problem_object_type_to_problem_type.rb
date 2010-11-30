class RenameReportsProblemObjectTypeToProblemType < ActiveRecord::Migration
  def self.up
    drop_table :reports
    create_table :reports do |t|
      t.belongs_to :problemable, :polymorphic => true
      t.text :description
      t.boolean :fixed, :default => false
      t.belongs_to :user
      t.timestamps
    end
    ["7102", "7600", "7920", "21892", "3942", "9245", "25210", "8968", "2951", "2954"].each do |item|
      Report.create!(:problemable => Item.find(item), :description => "Not Classic", :user_id => 1)
    end
  end

  def self.down
  end
end
