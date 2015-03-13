# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150313141028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "burger_ingredients", force: :cascade do |t|
    t.integer "burger_id"
    t.integer "ingredient_id"
  end

  add_index "burger_ingredients", ["burger_id"], name: "index_burger_ingredients_on_burger_id", using: :btree
  add_index "burger_ingredients", ["ingredient_id"], name: "index_burger_ingredients_on_ingredient_id", using: :btree

  create_table "burger_orders", force: :cascade do |t|
    t.integer "burger_id"
    t.integer "order_id"
  end

  add_index "burger_orders", ["burger_id"], name: "index_burger_orders_on_burger_id", using: :btree
  add_index "burger_orders", ["order_id"], name: "index_burger_orders_on_order_id", using: :btree

  create_table "burgers", force: :cascade do |t|
    t.string  "name"
    t.decimal "price"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "total_price"
    t.integer  "users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "address"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "burger_ingredients", "burgers"
  add_foreign_key "burger_ingredients", "ingredients"
  add_foreign_key "burger_orders", "burgers"
  add_foreign_key "burger_orders", "orders"
end
