class AddAllaIdToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :alla_id, :integer, :default => 0
    Item.columns.map(&:name)
    items = YAML::load(IO.read(Rails.root.join('db', 'items.yml')))
    items.each do |item|
      i = Item.find_by_name(item[:name])
      unless i.blank?
        i.alla_id = item[:alla_id]
        i.save
      end
    end
    Item.where("Lower(name) Like 'fabled %'").map(&:destroy)
    Item.where(:reqlevel => 61..200).map(&:destroy)
    Item.where(:clicklevel => 61..100).map(&:destroy)
    Item.where(:attuneable => 1).map(&:destroy)
  end

  def self.down
    remove_column :items, :alla_id
  end

end
