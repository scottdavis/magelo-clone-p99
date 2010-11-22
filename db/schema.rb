# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101122084351) do

  create_table "bag_slots", :force => true do |t|
    t.integer  "item_id"
    t.integer  "bag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bags", :force => true do |t|
    t.integer  "item_id"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.integer  "level"
    t.string   "deity"
    t.string   "guild"
    t.integer  "race_id"
    t.integer  "eq_class_id"
    t.integer  "level_percent"
    t.integer  "str"
    t.integer  "sta"
    t.integer  "agi"
    t.integer  "dex"
    t.integer  "wis"
    t.integer  "int"
    t.integer  "cha"
    t.integer  "ac"
    t.integer  "atk"
    t.integer  "pr"
    t.integer  "mr"
    t.integer  "dr"
    t.integer  "fr"
    t.integer  "cr"
    t.integer  "user_id"
    t.integer  "lear_id"
    t.integer  "neck_id"
    t.integer  "face_id"
    t.integer  "head_id"
    t.integer  "rear_id"
    t.integer  "lring_id"
    t.integer  "lwrist_id"
    t.integer  "arm_id"
    t.integer  "hand_id"
    t.integer  "rwrist_id"
    t.integer  "rring_id"
    t.integer  "shoulder_id"
    t.integer  "chest_id"
    t.integer  "back_id"
    t.integer  "waist_id"
    t.integer  "leg_id"
    t.integer  "foot_id"
    t.integer  "primary_id"
    t.integer  "secondary_id"
    t.integer  "range_id"
    t.integer  "ammo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eq_classes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "minstatus",       :limit => 2,  :default => 0,   :null => false
    t.string   "name",            :limit => 64, :default => "",  :null => false
    t.integer  "aagi",                          :default => 0,   :null => false
    t.integer  "ac",                            :default => 0,   :null => false
    t.integer  "accuracy",                      :default => 0,   :null => false
    t.integer  "acha",                          :default => 0,   :null => false
    t.integer  "adex",                          :default => 0,   :null => false
    t.integer  "aint",                          :default => 0,   :null => false
    t.integer  "artifactflag",    :limit => 1,  :default => 0,   :null => false
    t.integer  "asta",                          :default => 0,   :null => false
    t.integer  "astr",                          :default => 0,   :null => false
    t.integer  "attack",                        :default => 0,   :null => false
    t.integer  "augrestrict",                   :default => 0,   :null => false
    t.integer  "augslot1type",    :limit => 1,  :default => 0,   :null => false
    t.integer  "augslot2type",    :limit => 1,  :default => 0,   :null => false
    t.integer  "augslot3type",    :limit => 1,  :default => 0,   :null => false
    t.integer  "augslot4type",    :limit => 1,  :default => 0,   :null => false
    t.integer  "augslot5type",    :limit => 1,  :default => 0,   :null => false
    t.integer  "augtype",                       :default => 0,   :null => false
    t.integer  "avoidance",                     :default => 0,   :null => false
    t.integer  "awis",                          :default => 0,   :null => false
    t.integer  "bagsize",                       :default => 0,   :null => false
    t.integer  "bagslots",                      :default => 0,   :null => false
    t.integer  "bagtype",                       :default => 0,   :null => false
    t.integer  "bagwr",                         :default => 0,   :null => false
    t.integer  "banedmgamt",                    :default => 0,   :null => false
    t.integer  "banedmgraceamt",                :default => 0,   :null => false
    t.integer  "banedmgbody",                   :default => 0,   :null => false
    t.integer  "banedmgrace",                   :default => 0,   :null => false
    t.integer  "bardtype",                      :default => 0,   :null => false
    t.integer  "bardvalue",                     :default => 0,   :null => false
    t.integer  "book",                          :default => 0,   :null => false
    t.integer  "casttime",                      :default => 0,   :null => false
    t.integer  "casttime_",                     :default => 0,   :null => false
    t.string   "charmfile",       :limit => 32, :default => "",  :null => false
    t.string   "charmfileid",     :limit => 32, :default => "",  :null => false
    t.integer  "classes",                       :default => 0,   :null => false
    t.integer  "color",                         :default => 0,   :null => false
    t.string   "combateffects",   :limit => 10, :default => "",  :null => false
    t.integer  "extradmgskill",                 :default => 0,   :null => false
    t.integer  "extradmgamt",                   :default => 0,   :null => false
    t.integer  "price",                         :default => 0,   :null => false
    t.integer  "cr",                            :default => 0,   :null => false
    t.integer  "damage",                        :default => 0,   :null => false
    t.integer  "damageshield",                  :default => 0,   :null => false
    t.integer  "deity",                         :default => 0,   :null => false
    t.integer  "delay",                         :default => 0,   :null => false
    t.integer  "augdistiller",                  :default => 0,   :null => false
    t.integer  "dotshielding",                  :default => 0,   :null => false
    t.integer  "dr",                            :default => 0,   :null => false
    t.integer  "clicktype",                     :default => 0,   :null => false
    t.integer  "clicklevel2",                   :default => 0,   :null => false
    t.integer  "elemdmgtype",                   :default => 0,   :null => false
    t.integer  "elemdmgamt",                    :default => 0,   :null => false
    t.integer  "endur",                         :default => 0,   :null => false
    t.integer  "factionamt1",                   :default => 0,   :null => false
    t.integer  "factionamt2",                   :default => 0,   :null => false
    t.integer  "factionamt3",                   :default => 0,   :null => false
    t.integer  "factionamt4",                   :default => 0,   :null => false
    t.integer  "factionmod1",                   :default => 0,   :null => false
    t.integer  "factionmod2",                   :default => 0,   :null => false
    t.integer  "factionmod3",                   :default => 0,   :null => false
    t.integer  "factionmod4",                   :default => 0,   :null => false
    t.string   "filename",        :limit => 32, :default => "",  :null => false
    t.integer  "focuseffect",                   :default => 0,   :null => false
    t.integer  "fr",                            :default => 0,   :null => false
    t.integer  "fvnodrop",                      :default => 0,   :null => false
    t.integer  "haste",                         :default => 0,   :null => false
    t.integer  "clicklevel",                    :default => 0,   :null => false
    t.integer  "hp",                            :default => 0,   :null => false
    t.integer  "regen",                         :default => 0,   :null => false
    t.integer  "icon",                          :default => 0,   :null => false
    t.string   "idfile",          :limit => 30, :default => "",  :null => false
    t.integer  "itemclass",                     :default => 0,   :null => false
    t.integer  "itemtype",                      :default => 0,   :null => false
    t.integer  "ldonprice",                     :default => 0,   :null => false
    t.integer  "ldontheme",                     :default => 0,   :null => false
    t.integer  "ldonsold",                      :default => 0,   :null => false
    t.integer  "light",                         :default => 0,   :null => false
    t.string   "lore",            :limit => 80, :default => "",  :null => false
    t.integer  "loreflag",        :limit => 1,  :default => 0,   :null => false
    t.integer  "magic",                         :default => 0,   :null => false
    t.integer  "mana",                          :default => 0,   :null => false
    t.integer  "manaregen",                     :default => 0,   :null => false
    t.integer  "material",                      :default => 0,   :null => false
    t.integer  "maxcharges",                    :default => 0,   :null => false
    t.integer  "mr",                            :default => 0,   :null => false
    t.integer  "nodrop",                        :default => 0,   :null => false
    t.integer  "norent",                        :default => 0,   :null => false
    t.integer  "pendingloreflag", :limit => 1,  :default => 0,   :null => false
    t.integer  "pr",                            :default => 0,   :null => false
    t.integer  "procrate",                      :default => 0,   :null => false
    t.integer  "races",                         :default => 0,   :null => false
    t.integer  "_range",                        :default => 0,   :null => false
    t.integer  "reclevel",                      :default => 0,   :null => false
    t.integer  "recskill",                      :default => 0,   :null => false
    t.integer  "reqlevel",                      :default => 0,   :null => false
    t.float    "sellrate",                      :default => 0.0, :null => false
    t.integer  "shielding",                     :default => 0,   :null => false
    t.integer  "size",                          :default => 0,   :null => false
    t.integer  "skillmodtype",                  :default => 0,   :null => false
    t.integer  "skillmodvalue",                 :default => 0,   :null => false
    t.integer  "slots",                         :default => 0,   :null => false
    t.integer  "clickeffect",                   :default => 0,   :null => false
    t.integer  "spellshield",                   :default => 0,   :null => false
    t.integer  "strikethrough",                 :default => 0,   :null => false
    t.integer  "stunresist",                    :default => 0,   :null => false
    t.integer  "summonedflag",    :limit => 1,  :default => 0,   :null => false
    t.integer  "tradeskills",                   :default => 0,   :null => false
    t.integer  "favor",                         :default => 0,   :null => false
    t.integer  "weight",                        :default => 0,   :null => false
    t.integer  "unknown002",                    :default => 0,   :null => false
    t.integer  "unknown003",                    :default => 0,   :null => false
    t.integer  "unknown005",                    :default => 0,   :null => false
    t.integer  "unknown007",                    :default => 0,   :null => false
    t.integer  "unknown018",                    :default => 0,   :null => false
    t.integer  "unknown019",                    :default => 0,   :null => false
    t.integer  "unknown020",                    :default => 0,   :null => false
    t.integer  "UNK012",                        :default => 0,   :null => false
    t.integer  "UNK013",                        :default => 0,   :null => false
    t.integer  "benefitflag",                   :default => 0,   :null => false
    t.integer  "unknown061",                    :default => 0,   :null => false
    t.integer  "UNK054",                        :default => 0,   :null => false
    t.integer  "unknown067",                    :default => 0,   :null => false
    t.integer  "unknown069",                    :default => 0,   :null => false
    t.integer  "UNK059",                        :default => 0,   :null => false
    t.integer  "UNK061",                        :default => 0,   :null => false
    t.integer  "unknown081",                    :default => 0,   :null => false
    t.integer  "unknown105",                    :default => 0,   :null => false
    t.integer  "booktype",                      :default => 0,   :null => false
    t.integer  "unknown122",                    :default => 0,   :null => false
    t.string   "unknown123",      :limit => 11, :default => "0", :null => false
    t.string   "unknown124",      :limit => 11, :default => "0", :null => false
    t.integer  "recastdelay",                   :default => 0,   :null => false
    t.integer  "recasttype",                    :default => 0,   :null => false
    t.integer  "guildfavor",                    :default => 0,   :null => false
    t.string   "unknown128",      :limit => 11, :default => "0", :null => false
    t.integer  "UNK117",                        :default => 0,   :null => false
    t.integer  "UNK118",                        :default => 0,   :null => false
    t.integer  "attuneable",                    :default => 0,   :null => false
    t.integer  "nopet",                         :default => 0,   :null => false
    t.string   "unknown133",      :limit => 11, :default => "0", :null => false
    t.datetime "updated",                                        :null => false
    t.string   "comment",                       :default => "",  :null => false
    t.integer  "UNK121",                        :default => 0,   :null => false
    t.integer  "pointtype",                     :default => 0,   :null => false
    t.integer  "potionbelt",                    :default => 0,   :null => false
    t.integer  "UNK124",                        :default => 0,   :null => false
    t.integer  "stacksize",                     :default => 0,   :null => false
    t.integer  "UNK130",                        :default => 0,   :null => false
    t.integer  "proceffect",                    :default => 0,   :null => false
    t.integer  "proctype",                      :default => 0,   :null => false
    t.integer  "proclevel2",                    :default => 0,   :null => false
    t.integer  "proclevel",                     :default => 0,   :null => false
    t.integer  "UNK135",                        :default => 0,   :null => false
    t.integer  "worneffect",                    :default => 0,   :null => false
    t.integer  "worntype",                      :default => 0,   :null => false
    t.integer  "wornlevel2",                    :default => 0,   :null => false
    t.integer  "wornlevel",                     :default => 0,   :null => false
    t.integer  "UNK140",                        :default => 0,   :null => false
    t.integer  "focustype",                     :default => 0,   :null => false
    t.integer  "focuslevel2",                   :default => 0,   :null => false
    t.integer  "focuslevel",                    :default => 0,   :null => false
    t.integer  "UNK145",                        :default => 0,   :null => false
    t.integer  "scrolleffect",                  :default => 0,   :null => false
    t.integer  "scrolltype",                    :default => 0,   :null => false
    t.integer  "scrolllevel2",                  :default => 0,   :null => false
    t.integer  "scrolllevel",                   :default => 0,   :null => false
    t.integer  "UNK150",                        :default => 0,   :null => false
    t.datetime "serialized"
    t.datetime "verified"
    t.text     "serialization"
    t.string   "source",          :limit => 20, :default => "",  :null => false
    t.integer  "UNK033",                        :default => 0,   :null => false
    t.integer  "alla_id",                       :default => 0
  end

  add_index "items", ["aagi"], :name => "index_items_on_aagi"
  add_index "items", ["acha"], :name => "index_items_on_acha"
  add_index "items", ["adex"], :name => "index_items_on_adex"
  add_index "items", ["aint"], :name => "index_items_on_aint"
  add_index "items", ["asta"], :name => "index_items_on_asta"
  add_index "items", ["astr"], :name => "index_items_on_astr"
  add_index "items", ["awis"], :name => "index_items_on_awis"
  add_index "items", ["classes"], :name => "index_items_on_classes"
  add_index "items", ["cr"], :name => "index_items_on_cr"
  add_index "items", ["dr"], :name => "index_items_on_dr"
  add_index "items", ["fr"], :name => "index_items_on_fr"
  add_index "items", ["hp"], :name => "index_items_on_hp"
  add_index "items", ["id"], :name => "ID", :unique => true
  add_index "items", ["itemtype"], :name => "index_items_on_itemtype"
  add_index "items", ["lore"], :name => "lore_idx"
  add_index "items", ["mana"], :name => "index_items_on_mana"
  add_index "items", ["mr"], :name => "index_items_on_mr"
  add_index "items", ["name"], :name => "index_items_on_name"
  add_index "items", ["name"], :name => "name_idx"
  add_index "items", ["pr"], :name => "index_items_on_pr"
  add_index "items", ["races"], :name => "index_items_on_races"

  create_table "race_to_classes", :force => true do |t|
    t.integer  "eq_class_id"
    t.integer  "race_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", :force => true do |t|
    t.string   "problem_object_type"
    t.string   "problem_id"
    t.text     "description"
    t.boolean  "fixed",               :default => false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spells", :force => true do |t|
    t.string  "name",                 :limit => 64
    t.string  "player_1",             :limit => 64,  :default => "BLUE_TRAIL"
    t.string  "teleport_zone",        :limit => 64
    t.string  "you_cast",             :limit => 120
    t.string  "other_casts",          :limit => 120
    t.string  "cast_on_you",          :limit => 120
    t.string  "cast_on_other",        :limit => 120
    t.string  "spell_fades",          :limit => 120
    t.integer "range",                               :default => 100,          :null => false
    t.integer "aoerange",                            :default => 0,            :null => false
    t.integer "pushback",                            :default => 0,            :null => false
    t.integer "pushup",                              :default => 0,            :null => false
    t.integer "cast_time",                           :default => 0,            :null => false
    t.integer "recovery_time",                       :default => 0,            :null => false
    t.integer "recast_time",                         :default => 0,            :null => false
    t.integer "buffdurationformula",                 :default => 7,            :null => false
    t.integer "buffduration",                        :default => 65,           :null => false
    t.integer "AEDuration",                          :default => 0,            :null => false
    t.integer "mana",                                :default => 0,            :null => false
    t.integer "effect_base_value1",                  :default => 100,          :null => false
    t.integer "effect_base_value2",                  :default => 0,            :null => false
    t.integer "effect_base_value3",                  :default => 0,            :null => false
    t.integer "effect_base_value4",                  :default => 0,            :null => false
    t.integer "effect_base_value5",                  :default => 0,            :null => false
    t.integer "effect_base_value6",                  :default => 0,            :null => false
    t.integer "effect_base_value7",                  :default => 0,            :null => false
    t.integer "effect_base_value8",                  :default => 0,            :null => false
    t.integer "effect_base_value9",                  :default => 0,            :null => false
    t.integer "effect_base_value10",                 :default => 0,            :null => false
    t.integer "effect_base_value11",                 :default => 0,            :null => false
    t.integer "effect_base_value12",                 :default => 0,            :null => false
    t.integer "effect_limit_value1",                 :default => 0,            :null => false
    t.integer "effect_limit_value2",                 :default => 0,            :null => false
    t.integer "effect_limit_value3",                 :default => 0,            :null => false
    t.integer "effect_limit_value4",                 :default => 0,            :null => false
    t.integer "effect_limit_value5",                 :default => 0,            :null => false
    t.integer "effect_limit_value6",                 :default => 0,            :null => false
    t.integer "effect_limit_value7",                 :default => 0,            :null => false
    t.integer "effect_limit_value8",                 :default => 0,            :null => false
    t.integer "effect_limit_value9",                 :default => 0,            :null => false
    t.integer "effect_limit_value10",                :default => 0,            :null => false
    t.integer "effect_limit_value11",                :default => 0,            :null => false
    t.integer "effect_limit_value12",                :default => 0,            :null => false
    t.integer "max1",                                :default => 0,            :null => false
    t.integer "max2",                                :default => 0,            :null => false
    t.integer "max3",                                :default => 0,            :null => false
    t.integer "max4",                                :default => 0,            :null => false
    t.integer "max5",                                :default => 0,            :null => false
    t.integer "max6",                                :default => 0,            :null => false
    t.integer "max7",                                :default => 0,            :null => false
    t.integer "max8",                                :default => 0,            :null => false
    t.integer "max9",                                :default => 0,            :null => false
    t.integer "max10",                               :default => 0,            :null => false
    t.integer "max11",                               :default => 0,            :null => false
    t.integer "max12",                               :default => 0,            :null => false
    t.integer "icon",                                :default => 0,            :null => false
    t.integer "memicon",                             :default => 0,            :null => false
    t.integer "components1",                         :default => -1,           :null => false
    t.integer "components2",                         :default => -1,           :null => false
    t.integer "components3",                         :default => -1,           :null => false
    t.integer "components4",                         :default => -1,           :null => false
    t.integer "component_counts1",                   :default => 1,            :null => false
    t.integer "component_counts2",                   :default => 1,            :null => false
    t.integer "component_counts3",                   :default => 1,            :null => false
    t.integer "component_counts4",                   :default => 1,            :null => false
    t.integer "NoexpendReagent1",                    :default => -1,           :null => false
    t.integer "NoexpendReagent2",                    :default => -1,           :null => false
    t.integer "NoexpendReagent3",                    :default => -1,           :null => false
    t.integer "NoexpendReagent4",                    :default => -1,           :null => false
    t.integer "formula1",                            :default => 100,          :null => false
    t.integer "formula2",                            :default => 100,          :null => false
    t.integer "formula3",                            :default => 100,          :null => false
    t.integer "formula4",                            :default => 100,          :null => false
    t.integer "formula5",                            :default => 100,          :null => false
    t.integer "formula6",                            :default => 100,          :null => false
    t.integer "formula7",                            :default => 100,          :null => false
    t.integer "formula8",                            :default => 100,          :null => false
    t.integer "formula9",                            :default => 100,          :null => false
    t.integer "formula10",                           :default => 100,          :null => false
    t.integer "formula11",                           :default => 100,          :null => false
    t.integer "formula12",                           :default => 100,          :null => false
    t.integer "LightType",                           :default => 0,            :null => false
    t.integer "goodEffect",                          :default => 0,            :null => false
    t.integer "Activated",                           :default => 0,            :null => false
    t.integer "resisttype",                          :default => 0,            :null => false
    t.integer "effectid1",                           :default => 254,          :null => false
    t.integer "effectid2",                           :default => 254,          :null => false
    t.integer "effectid3",                           :default => 254,          :null => false
    t.integer "effectid4",                           :default => 254,          :null => false
    t.integer "effectid5",                           :default => 254,          :null => false
    t.integer "effectid6",                           :default => 254,          :null => false
    t.integer "effectid7",                           :default => 254,          :null => false
    t.integer "effectid8",                           :default => 254,          :null => false
    t.integer "effectid9",                           :default => 254,          :null => false
    t.integer "effectid10",                          :default => 254,          :null => false
    t.integer "effectid11",                          :default => 254,          :null => false
    t.integer "effectid12",                          :default => 254,          :null => false
    t.integer "targettype",                          :default => 2,            :null => false
    t.integer "basediff",                            :default => 0,            :null => false
    t.integer "skill",                               :default => 98,           :null => false
    t.integer "zonetype",                            :default => -1,           :null => false
    t.integer "EnvironmentType",                     :default => 0,            :null => false
    t.integer "TimeOfDay",                           :default => 0,            :null => false
    t.integer "classes1",                            :default => 255,          :null => false
    t.integer "classes2",                            :default => 255,          :null => false
    t.integer "classes3",                            :default => 255,          :null => false
    t.integer "classes4",                            :default => 255,          :null => false
    t.integer "classes5",                            :default => 255,          :null => false
    t.integer "classes6",                            :default => 255,          :null => false
    t.integer "classes7",                            :default => 255,          :null => false
    t.integer "classes8",                            :default => 255,          :null => false
    t.integer "classes9",                            :default => 255,          :null => false
    t.integer "classes10",                           :default => 255,          :null => false
    t.integer "classes11",                           :default => 255,          :null => false
    t.integer "classes12",                           :default => 255,          :null => false
    t.integer "classes13",                           :default => 255,          :null => false
    t.integer "classes14",                           :default => 255,          :null => false
    t.integer "classes15",                           :default => 255,          :null => false
    t.integer "classes16",                           :default => 255,          :null => false
    t.integer "CastingAnim",                         :default => 44,           :null => false
    t.integer "TargetAnim",                          :default => 13,           :null => false
    t.integer "TravelType",                          :default => 0,            :null => false
    t.integer "SpellAffectIndex",                    :default => -1,           :null => false
    t.integer "field124",                            :default => 0,            :null => false
    t.integer "field125",                            :default => 0,            :null => false
    t.integer "deities1",                            :default => 0,            :null => false
    t.integer "deities2",                            :default => 0,            :null => false
    t.integer "deities3",                            :default => 0,            :null => false
    t.integer "deities4",                            :default => 0,            :null => false
    t.integer "deities5",                            :default => 0,            :null => false
    t.integer "deities6",                            :default => 0,            :null => false
    t.integer "deities7",                            :default => 0,            :null => false
    t.integer "deities8",                            :default => 0,            :null => false
    t.integer "deities9",                            :default => 0,            :null => false
    t.integer "deities10",                           :default => 0,            :null => false
    t.integer "deities11",                           :default => 0,            :null => false
    t.integer "deities12",                           :default => 0,            :null => false
    t.integer "deities13",                           :default => 0,            :null => false
    t.integer "deities14",                           :default => 0,            :null => false
    t.integer "deities15",                           :default => 0,            :null => false
    t.integer "deities16",                           :default => 0,            :null => false
    t.integer "field142",                            :default => 100,          :null => false
    t.integer "field143",                            :default => 0,            :null => false
    t.integer "new_icon",                            :default => 161,          :null => false
    t.integer "spellanim",                           :default => 0,            :null => false
    t.integer "uninterruptable",                     :default => 0,            :null => false
    t.integer "ResistDiff",                          :default => -150,         :null => false
    t.integer "dot_stacking_exempt",                 :default => 0,            :null => false
    t.integer "deleteable",                          :default => 0,            :null => false
    t.integer "RecourseLink",                        :default => 0,            :null => false
    t.integer "field151",                            :default => 0,            :null => false
    t.integer "field152",                            :default => 0,            :null => false
    t.integer "field153",                            :default => 0,            :null => false
    t.integer "short_buff_box",                      :default => -1,           :null => false
    t.integer "descnum",                             :default => 0,            :null => false
    t.integer "typedescnum"
    t.integer "effectdescnum"
    t.integer "field158"
    t.integer "field159",                            :default => 0,            :null => false
    t.integer "field160",                            :default => 0,            :null => false
    t.integer "field161",                            :default => 0,            :null => false
    t.integer "bonushate",                           :default => 0,            :null => false
    t.integer "field163",                            :default => 100,          :null => false
    t.integer "field164",                            :default => -150,         :null => false
    t.integer "field165",                            :default => 0,            :null => false
    t.integer "EndurCost",                           :default => 0,            :null => false
    t.integer "EndurTimerIndex",                     :default => 0,            :null => false
    t.integer "field168",                            :default => 0,            :null => false
    t.integer "field169",                            :default => 0,            :null => false
    t.integer "field170",                            :default => 0,            :null => false
    t.integer "field171",                            :default => 0,            :null => false
    t.integer "field172",                            :default => 0,            :null => false
    t.integer "HateAdded",                           :default => 0,            :null => false
    t.integer "EndurUpkeep",                         :default => 0,            :null => false
    t.integer "field175"
    t.integer "numhits",                             :default => 0,            :null => false
    t.integer "pvpresistbase",                       :default => -150,         :null => false
    t.integer "pvpresistcalc",                       :default => 100,          :null => false
    t.integer "pvpresistcap",                        :default => -150,         :null => false
    t.integer "spell_category",                      :default => -99,          :null => false
    t.integer "field181",                            :default => 7,            :null => false
    t.integer "field182",                            :default => 65,           :null => false
    t.integer "field183",                            :default => 0,            :null => false
    t.integer "field184",                            :default => 0,            :null => false
    t.integer "can_mgb",                             :default => 0,            :null => false
    t.integer "nodispell",                           :default => -1,           :null => false
    t.integer "npc_category",                        :default => 0,            :null => false
    t.integer "npc_usefulness",                      :default => 0,            :null => false
    t.integer "field189",                            :default => 0,            :null => false
    t.integer "field190",                            :default => 0,            :null => false
    t.integer "field191",                            :default => 0,            :null => false
    t.integer "field192",                            :default => 0,            :null => false
    t.integer "nimbuseffect",                        :default => 0
    t.integer "field194",                            :default => 0,            :null => false
    t.integer "field195",                            :default => 0,            :null => false
    t.integer "field196",                            :default => 0,            :null => false
    t.integer "field197",                            :default => 0,            :null => false
    t.integer "field198",                            :default => 0,            :null => false
    t.integer "field199",                            :default => 1,            :null => false
    t.integer "field200",                            :default => 0,            :null => false
    t.integer "field201",                            :default => 0,            :null => false
    t.integer "field202",                            :default => 0,            :null => false
    t.integer "field203",                            :default => 0
    t.integer "field204",                            :default => 0
    t.integer "field205",                            :default => 0
    t.integer "field206",                            :default => -1
    t.integer "spellgroup",                          :default => 0
    t.integer "field208",                            :default => 0
    t.integer "field209",                            :default => 0
    t.integer "field210",                            :default => 1
    t.integer "field211",                            :default => 0
    t.integer "allowrest",                           :default => 0
    t.integer "field213",                            :default => 1
    t.integer "field214",                            :default => 1
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
