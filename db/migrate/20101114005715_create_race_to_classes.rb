class CreateRaceToClasses < ActiveRecord::Migration
  def self.up
    create_table :race_to_classes do |t|
      t.belongs_to :eq_class
      t.belongs_to :race
      t.timestamps
    end
  end

  def self.down
    drop_table :race_to_classes
  end
end
