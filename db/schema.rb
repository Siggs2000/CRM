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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130612175901) do

  create_table "orders", :force => true do |t|
    t.integer  "order_no"
    t.string   "store"
    t.date     "order_date"
    t.string   "payment_type"
    t.string   "phone"
    t.string   "email"
    t.string   "bill_first_name"
    t.string   "bill_last_name"
    t.string   "bill_address"
    t.string   "bill_city"
    t.string   "bill_state"
    t.integer  "bill_zip"
    t.string   "bill_country"
    t.string   "ship_first_name"
    t.string   "ship_last_name"
    t.string   "ship_address"
    t.string   "ship_city"
    t.string   "ship_state"
    t.integer  "ship_zip"
    t.string   "ship_country"
    t.integer  "po_num"
    t.string   "ship_method"
    t.integer  "tax_total"
    t.decimal  "ship_cost"
    t.decimal  "total_order"
    t.string   "item_name"
    t.string   "item_desc"
    t.integer  "qty"
    t.integer  "item_rate"
    t.integer  "item_amount"
    t.integer  "unit_weight"
    t.string   "product_options"
    t.string   "product_code"
    t.string   "promo_code"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
