class CreateBagSlots < ActiveRecord::Migration
  def self.up
    create_table :bag_slots do |t|
      t.belongs_to :item
      t.belongs_to :bag
      t.timestamps
    end
  end

  def self.down
    drop_table :bag_slots
  end
end
