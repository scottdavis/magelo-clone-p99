class CreateBags < ActiveRecord::Migration
  def self.up
    create_table :bags do |t|
      t.belongs_to :item
      t.belongs_to :character
      t.timestamps
    end
  end

  def self.down
    drop_table :bags
  end
end
