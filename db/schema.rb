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

ActiveRecord::Schema[7.0].define(version: 2022_07_07_213045) do
  create_table "concerts", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.integer "audience"
    t.integer "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "duration"
    t.index ["group_id"], name: "index_concerts_on_group_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.text "terms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crews", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.integer "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_crews_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "type_group"
    t.date "debut_date"
    t.integer "contract_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_groups_on_contract_id"
  end

  add_foreign_key "concerts", "groups"
  add_foreign_key "crews", "groups"
  add_foreign_key "groups", "contracts"
end
