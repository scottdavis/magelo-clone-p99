# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


#Races
races = ['Barbarian', 'Dark Elf', 'Dwarf', 'Erudite', 'Gnome', 'Half Elf', 'Halfling', 'High Elf', 'Human', 'Iksar', 'Ogre', 'Troll', 'Wood Elf']
races.each {|race| Race.create!(:name => race) }
race = {}
races.each do |name|
  race[name] = Race.find_by_name(name)
end


#classes
classes = ["Bard", "Cleric", "Druid", "Enchanter", "Magician", "Monk", "Necromancer", "Paladin", "Ranger", "Rogue", "ShadowKnight", "Shaman", "Warrior", "Wizard"]
classes.each { |klass| EqClass.create!(:name => klass) }
klass = {}
classes.each do |c|
  klass[c] = EqClass.find_by_name(c)
end


#race to class
#barbarian
RaceToClass.create!(:race => race["Barbarian"], :eq_class => klass['Rogue'])
RaceToClass.create!(:race => race["Barbarian"], :eq_class => klass['Shaman'])
RaceToClass.create!(:race => race["Barbarian"], :eq_class => klass['Warrior'])
#darkelf
RaceToClass.create!(:race => race["Dark Elf"], :eq_class => klass['Cleric'])
RaceToClass.create!(:race => race["Dark Elf"], :eq_class => klass['Enchanter'])
RaceToClass.create!(:race => race["Dark Elf"], :eq_class => klass['Magician'])
RaceToClass.create!(:race => race["Dark Elf"], :eq_class => klass['Necromancer'])
RaceToClass.create!(:race => race["Dark Elf"], :eq_class => klass['Rogue'])
RaceToClass.create!(:race => race["Dark Elf"], :eq_class => klass['Warrior'])
RaceToClass.create!(:race => race["Dark Elf"], :eq_class => klass['Wizard'])
#Dwarf
RaceToClass.create!(:race => race["Dwarf"], :eq_class => klass['Cleric'])
RaceToClass.create!(:race => race["Dwarf"], :eq_class => klass['Paladin'])
RaceToClass.create!(:race => race["Dwarf"], :eq_class => klass['Rogue'])
RaceToClass.create!(:race => race["Dwarf"], :eq_class => klass['Warrior'])
#Erudite
RaceToClass.create!(:race => race["Erudite"], :eq_class => klass['Cleric'])
RaceToClass.create!(:race => race["Erudite"], :eq_class => klass['Enchanter'])
RaceToClass.create!(:race => race["Erudite"], :eq_class => klass['Magician'])
RaceToClass.create!(:race => race["Erudite"], :eq_class => klass['Necromancer'])
RaceToClass.create!(:race => race["Erudite"], :eq_class => klass['Paladin'])
RaceToClass.create!(:race => race["Erudite"], :eq_class => klass['ShadowKnight'])
RaceToClass.create!(:race => race["Erudite"], :eq_class => klass['Wizard'])
#Gnome
RaceToClass.create!(:race => race["Gnome"], :eq_class => klass['Cleric'])
RaceToClass.create!(:race => race["Gnome"], :eq_class => klass['Enchanter'])
RaceToClass.create!(:race => race["Gnome"], :eq_class => klass['Magician'])
RaceToClass.create!(:race => race["Gnome"], :eq_class => klass['Necromancer'])
RaceToClass.create!(:race => race["Gnome"], :eq_class => klass['Paladin'])
RaceToClass.create!(:race => race["Gnome"], :eq_class => klass['Rogue'])
RaceToClass.create!(:race => race["Gnome"], :eq_class => klass['Warrior'])
RaceToClass.create!(:race => race["Gnome"], :eq_class => klass['Wizard'])
#Half elf
RaceToClass.create!(:race => race["Half Elf"], :eq_class => klass['Bard'])
RaceToClass.create!(:race => race["Half Elf"], :eq_class => klass['Druid'])
RaceToClass.create!(:race => race["Half Elf"], :eq_class => klass['Paladin'])
RaceToClass.create!(:race => race["Half Elf"], :eq_class => klass['Ranger'])
RaceToClass.create!(:race => race["Half Elf"], :eq_class => klass['Rogue'])
RaceToClass.create!(:race => race["Half Elf"], :eq_class => klass['Warrior'])
#halfling
RaceToClass.create!(:race => race["Halfling"], :eq_class => klass['Cleric'])
RaceToClass.create!(:race => race["Halfling"], :eq_class => klass['Druid'])
RaceToClass.create!(:race => race["Halfling"], :eq_class => klass['Paladin'])
RaceToClass.create!(:race => race["Halfling"], :eq_class => klass['Ranger'])
RaceToClass.create!(:race => race["Halfling"], :eq_class => klass['Rogue'])
RaceToClass.create!(:race => race["Halfling"], :eq_class => klass['Warrior'])
#high elf
RaceToClass.create!(:race => race["High Elf"], :eq_class => klass['Cleric'])
RaceToClass.create!(:race => race["High Elf"], :eq_class => klass['Enchanter'])
RaceToClass.create!(:race => race["High Elf"], :eq_class => klass['Magician'])
RaceToClass.create!(:race => race["High Elf"], :eq_class => klass['Paladin'])
RaceToClass.create!(:race => race["High Elf"], :eq_class => klass['Wizard'])
#Human
RaceToClass.create!(:race => race["Human"], :eq_class => klass['Bard'])
RaceToClass.create!(:race => race["Human"], :eq_class => klass['Cleric'])
RaceToClass.create!(:race => race["Human"], :eq_class => klass['Druid'])
RaceToClass.create!(:race => race["Human"], :eq_class => klass['Enchanter'])
RaceToClass.create!(:race => race["Human"], :eq_class => klass['Magician'])
RaceToClass.create!(:race => race["Human"], :eq_class => klass['Monk'])
RaceToClass.create!(:race => race["Human"], :eq_class => klass['Necromancer'])
RaceToClass.create!(:race => race["Human"], :eq_class => klass['Paladin'])
RaceToClass.create!(:race => race["Human"], :eq_class => klass['Ranger'])
RaceToClass.create!(:race => race["Human"], :eq_class => klass['Rogue'])
RaceToClass.create!(:race => race["Human"], :eq_class => klass['ShadowKnight'])
RaceToClass.create!(:race => race["Human"], :eq_class => klass['Warrior'])
RaceToClass.create!(:race => race["Human"], :eq_class => klass['Wizard'])
#Iksar
RaceToClass.create!(:race => race["Iksar"], :eq_class => klass['Monk'])
RaceToClass.create!(:race => race["Iksar"], :eq_class => klass['Necromancer'])
RaceToClass.create!(:race => race["Iksar"], :eq_class => klass['ShadowKnight'])
RaceToClass.create!(:race => race["Iksar"], :eq_class => klass['Shaman'])
RaceToClass.create!(:race => race["Iksar"], :eq_class => klass['Warrior'])
#Ogre
RaceToClass.create!(:race => race["Ogre"], :eq_class => klass['ShadowKnight'])
RaceToClass.create!(:race => race["Ogre"], :eq_class => klass['Shaman'])
RaceToClass.create!(:race => race["Ogre"], :eq_class => klass['Warrior'])
#troll
RaceToClass.create!(:race => race["Troll"], :eq_class => klass['ShadowKnight'])
RaceToClass.create!(:race => race["Troll"], :eq_class => klass['Shaman'])
RaceToClass.create!(:race => race["Troll"], :eq_class => klass['Warrior'])
#woodelf
RaceToClass.create!(:race => race["Wood Elf"], :eq_class => klass['Bard'])
RaceToClass.create!(:race => race["Wood Elf"], :eq_class => klass['Druid'])
RaceToClass.create!(:race => race["Wood Elf"], :eq_class => klass['Ranger'])
RaceToClass.create!(:race => race["Wood Elf"], :eq_class => klass['Rogue'])
RaceToClass.create!(:race => race["Wood Elf"], :eq_class => klass['Warrior'])


me = User.create!(:email => 'jetviper21@gmail.com', :password => 'guitar')
me.admin = true
me.save
c = Character.create!(:eq_class => klass['Necromancer'], :level => 50, :deity => 'Bertoxxulous', :user => me, :name => 'Stairs', :surname => 'Protected', :str => 60, :sta => 75, :dex => 95, :agi => 85, :wis => 67,
                      :int => 133, :cha => 60, :pr => 15, :mr => 25, :dr => 15, :fr=> 25, :cr => 25, :race => race["Gnome"])
                      
c.level_percent = 100
c.ac = 0
c.rear = c.lear = Item.find_by_name('Black Sapphire Electrum Earring')
c.neck = Item.find_by_name('Electrum Star Amulet')
c.face = Item.find_by_name('Sheer Bone Mask')
c.head = Item.find_by_name("Savant's cap")
c.rring = c.lring = Item.find_by_name('Moonstone Ring')
c.rwrist = c.lwrist = Item.find_by_name('Bracelet of Woven Grass')
c.arm = Item.find_by_name('Gatorscale Sleeves')
c.hand = Item.find_by_name('ShadowBound Gloves')
c.shoulder = Item.find_by_name('Pegasus Feather Cloak')
c.chest = Item.find_by_name("Shining Metallic Robes")
c.back = Item.find_by_name("Hooded Black Cloak")
c.waist = Item.find_by_name('Braided Cinch Cord')
c.leg = Item.find_by_name('Silversilk Leggings')
c.foot = Item.find_by_name('Golden Efreeti Boots')
c.primary = Item.find_by_name('Harvester')
c.secondary = Item.find_by_name('Rokyls Channelling Crystal')
c.range = Item.find_by_name('Dagger of Marnek')

#bags
backpack = Item.find_by_name('Backpack')
6.times do
  bag = Bag.new(:item => backpack)
  bag.slots.times do
    bag.bag_slots << BagSlot.new(:item => Item.find_by_name('Manastone'))
  end

  c.bags << bag
end

bag = Bag.new(:item => Item.find_by_name('Guise of the Deceiver'))
c.bags << bag
c.save!





#Item fixes
ef = Item.find_by_name('Golden Efreeti Boots')
ef.pr = 0
ef.save

i = Item.find_by_name('Manastone')
e = i.effect
e.cast_time = 0
e.save

