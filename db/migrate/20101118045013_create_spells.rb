class CreateSpells < ActiveRecord::Migration
  def self.up
    items = Rails.root.join('db', 'spells.sql')
    require 'yaml'
    info = YAML::load(IO.read(Rails.root.join('config/database.yml')))
    user = info[Rails.env]['username']
    password = info[Rails.env]['password']
    db = info[Rails.env]['database']
    if password.blank?
      `mysql -u #{user} #{db} < #{items}`
    else
      `mysql -u #{user} -p#{password} #{db} < #{items}`
    end
    rename_table :spells_new, :spells
  end

  def self.down
    drop_table :spells
  end
end
