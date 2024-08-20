# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_20_185237) do
  create_table "chassis_types", force: :cascade do |t|
    t.string "type"
    t.integer "aim"
    t.integer "batery"
    t.integer "damage"
    t.integer "durability"
    t.integer "shell"
    t.integer "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "robots_id"
    t.index ["robots_id"], name: "index_chassis_types_on_robots_id"
  end

  create_table "general_abilities", force: :cascade do |t|
    t.string "name"
    t.string "effects"
    t.integer "batery_consumption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "robots_id"
    t.index ["robots_id"], name: "index_general_abilities_on_robots_id"
  end

  create_table "general_parts", force: :cascade do |t|
    t.string "name"
    t.string "stats"
    t.string "placement"
    t.integer "memory_consumption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "robots_id"
    t.index ["robots_id"], name: "index_general_parts_on_robots_id"
  end

  create_table "medal_colections", force: :cascade do |t|
    t.string "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medals", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "medal_colections_id"
    t.index ["medal_colections_id"], name: "index_medals_on_medal_colections_id"
  end

  create_table "robot_personalities", force: :cascade do |t|
    t.string "name"
    t.string "atr_negative_name"
    t.integer "atr_negative"
    t.string "atr_positive_name"
    t.integer "atr_positive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "robots", force: :cascade do |t|
    t.string "name"
    t.integer "memory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "medal_colections_id"
    t.integer "trainers_id"
    t.integer "robot_personalities_id"
    t.index ["medal_colections_id"], name: "index_robots_on_medal_colections_id"
    t.index ["robot_personalities_id"], name: "index_robots_on_robot_personalities_id"
    t.index ["trainers_id"], name: "index_robots_on_trainers_id"
  end

  create_table "spec_abilities", force: :cascade do |t|
    t.string "name"
    t.string "effects"
    t.integer "batery_consumption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "medals_id"
    t.index ["medals_id"], name: "index_spec_abilities_on_medals_id"
  end

  create_table "spec_parts", force: :cascade do |t|
    t.string "name"
    t.string "stats"
    t.string "placement"
    t.integer "memory_consuption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "chassis_types_id"
    t.index ["chassis_types_id"], name: "index_spec_parts_on_chassis_types_id"
  end

  create_table "trainer_personalities", force: :cascade do |t|
    t.string "style"
    t.string "effects"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trainer_id"
    t.index ["trainer_id"], name: "index_trainer_personalities_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "chassis_types", "robots", column: "robots_id"
  add_foreign_key "general_abilities", "robots", column: "robots_id"
  add_foreign_key "general_parts", "robots", column: "robots_id"
  add_foreign_key "medals", "medal_colections", column: "medal_colections_id"
  add_foreign_key "robots", "medal_colections", column: "medal_colections_id"
  add_foreign_key "robots", "robot_personalities", column: "robot_personalities_id"
  add_foreign_key "robots", "trainers", column: "trainers_id"
  add_foreign_key "spec_abilities", "medals", column: "medals_id"
  add_foreign_key "spec_parts", "chassis_types", column: "chassis_types_id"
  add_foreign_key "trainer_personalities", "trainers"
end
