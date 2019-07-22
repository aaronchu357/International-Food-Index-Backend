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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_17_143552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "user_id"
    t.bigint "national_dish_id"
    t.index ["national_dish_id"], name: "index_comments_on_national_dish_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "ingredient_national_dishes", force: :cascade do |t|
    t.bigint "ingredient_id"
    t.bigint "national_dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_ingredient_national_dishes_on_ingredient_id"
    t.index ["national_dish_id"], name: "index_ingredient_national_dishes_on_national_dish_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "longitude"
    t.string "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "national_dishes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.bigint "location_id"
    t.index ["location_id"], name: "index_national_dishes_on_location_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

  add_foreign_key "comments", "national_dishes"
  add_foreign_key "comments", "users"
  add_foreign_key "ingredient_national_dishes", "ingredients"
  add_foreign_key "ingredient_national_dishes", "national_dishes"
  add_foreign_key "national_dishes", "locations"
end
