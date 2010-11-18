class LowercaseNameInItems < ActiveRecord::Migration
  def self.up
    rename_column :items, "Name", 'name'
    add_index :items, :name
  end

  def self.down
    rename_column :items, "name", 'Name'
  end
end
