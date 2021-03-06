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

ActiveRecord::Schema.define(version: 2021_07_20_015734) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "menu1s", force: :cascade do |t|
    t.date "week"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menu2s", force: :cascade do |t|
    t.date "week"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus", force: :cascade do |t|
    t.date "week", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipe1s", force: :cascade do |t|
    t.string "title"
    t.text "ingredients"
    t.text "instructions"
    t.text "nutritional_info"
    t.text "classification"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipe2s", force: :cascade do |t|
    t.string "title"
    t.text "ingredients"
    t.text "instructions"
    t.text "nutritional_info"
    t.string "classification"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipe_week_join_tables", force: :cascade do |t|
    t.bigint "menu_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_recipe_week_join_tables_on_menu_id"
    t.index ["recipe_id"], name: "index_recipe_week_join_tables_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title", null: false
    t.text "ingredients", null: false
    t.text "instructions", null: false
    t.text "nutritional_info"
    t.string "classification"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "recipe_week_join_tables", "menus"
  add_foreign_key "recipe_week_join_tables", "recipes"
end
