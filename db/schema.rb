# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_21_174404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "captures", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "pokemon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pokemon_id"], name: "index_captures_on_pokemon_id"
    t.index ["user_id"], name: "index_captures_on_user_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "front_img"
    t.string "back_img"
    t.integer "lv"
    t.integer "exp"
    t.integer "exp_max"
    t.integer "hp"
    t.integer "atk"
    t.integer "def"
    t.integer "spd"
    t.integer "stat_pts"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.integer "wins"
    t.integer "losses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "captures", "pokemons"
  add_foreign_key "captures", "users"
end
