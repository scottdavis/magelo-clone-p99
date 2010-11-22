class AddItemIndexs < ActiveRecord::Migration
  def self.up
    add_index :items, :classes
    add_index :items, :races
    [:astr, :asta, :aagi, :adex, :awis, :aint, :acha, :hp, :mana, :itemtype, :pr, :mr, :dr, :fr, :cr].each do |col|
      add_index :items, col
    end
  end

  def self.down
  end
end
