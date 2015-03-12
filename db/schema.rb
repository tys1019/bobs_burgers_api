ActiveRecord::Schema.define(version: 20150312160003) do

  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "burgers",     default: [], array: true
    t.decimal  "total_price"
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

end
