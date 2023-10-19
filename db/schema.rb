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

ActiveRecord::Schema[7.1].define(version: 2023_10_18_122123) do
  create_table "firsts", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seconds", force: :cascade do |t|
    t.string "product"
    t.integer "qnty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "first_id", null: false
    t.index ["first_id"], name: "index_seconds_on_first_id"
  end

  create_table "thirds", force: :cascade do |t|
    t.string "add"
    t.integer "pin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "first_id", null: false
    t.integer "second_id", null: false
    t.index ["first_id"], name: "index_thirds_on_first_id"
    t.index ["second_id"], name: "index_thirds_on_second_id"
  end

  add_foreign_key "seconds", "firsts"
  add_foreign_key "thirds", "firsts"
  add_foreign_key "thirds", "seconds"
end
