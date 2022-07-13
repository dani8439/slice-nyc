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

ActiveRecord::Schema.define(version: 2019_05_29_174528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "crust"
    t.string "cheese"
    t.string "shape"
    t.string "pan"
    t.string "additional_comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cheeses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crusts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pie_cheeses", force: :cascade do |t|
    t.integer "pie_id"
    t.integer "cheese_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pie_restaurants", force: :cascade do |t|
    t.integer "pie_id"
    t.integer "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pie_toppings", force: :cascade do |t|
    t.integer "pie_id"
    t.integer "topping_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pies", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.integer "crust_id"
    t.integer "sauce_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_categories", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_ratings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "restaurant_id"
    t.integer "atmosphere_score"
    t.integer "service_score"
    t.integer "food_score"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "neighborhood"
    t.string "borough"
    t.string "seating"
    t.string "oven"
    t.boolean "multiple_locations", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sauces", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toppings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "uid"
    t.string "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
