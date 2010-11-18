class CreateEqClasses < ActiveRecord::Migration
  def self.up
    create_table :eq_classes do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :eq_classes
  end
end
