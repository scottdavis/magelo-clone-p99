Factory.define(:user) do |f|
  f.sequence(:email) {|n| "jetviper21+#{n}@gmail.com"}
  f.password = 'password'
end

Factory.define(:character) do |f|
  f.sequence(:name) {|n| "Stairs_#{n}"}
end


::RACES = ['Barbarian', 'Dark Elf', 'Dwarf', 'Erudite', 'Gnome', 'Half Elf', 'Halfling', 'High Elf', 'Human', 'Iksar', 'Ogre', 'Troll', 'Wood Elf']

::EQCLASSES = ["Bard", "Cleric", "Druid", "Enchanter", "Magician", "Monk", "Necromancer", "Paladin", "Ranger", "Rogue", "ShadowKnight", "Shaman", "Warrior", "Wizard"]

Factory.define(:race) do |f|
  f.name = RACES.first
end

Factory.define(:eq_class) do |f|
  f.name = EQCLASSES.first
end


def load_all_races
  RACES.each do |race|
    Factory(:race, :name => race)
  end
end

def load_all_classes
  EQCLASSES.each do |klass|
    Factory(:eq_class, :name => klass)
  end
end