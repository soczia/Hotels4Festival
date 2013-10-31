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

ActiveRecord::Schema.define(:version => 20120418171112) do

  create_table "bookings", :force => true do |t|
    t.date    "dateFrom",  :null => false
    t.date    "dateTo",    :null => false
    t.integer "person_id"
    t.integer "room_id"
    t.integer "hotel_id"
    t.integer "group_id"
  end

  add_index "bookings", ["person_id"], :name => "personFK"
  add_index "bookings", ["room_id"], :name => "roomFK"

  create_table "groups", :force => true do |t|
    t.string  "name",    :limit => 45
    t.integer "menager"
  end

  create_table "hotels", :force => true do |t|
    t.string "name",        :limit => 45
    t.string "street",      :limit => 45
    t.string "city",        :limit => 45
    t.string "postcode",    :limit => 45
    t.string "geolocation", :limit => 45
    t.string "picture",     :limit => 111
  end

  create_table "people", :force => true do |t|
    t.string  "imie",            :limit => 45
    t.string  "nazwisko",        :limit => 45
    t.string  "role",            :limit => 45
    t.string  "age",             :limit => 45
    t.integer "group_id"
    t.integer "ableToShareRoom",               :default => 0
    t.string  "mobile",          :limit => 45
    t.string  "email",           :limit => 45
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "rooms", :force => true do |t|
    t.string  "roomtype",   :limit => 45
    t.string  "beds",       :limit => 45
    t.integer "hotel_id"
    t.string  "roomNumber", :limit => 45
  end

  add_index "rooms", ["hotel_id"], :name => "hotelFK"

  create_table "stays", :force => true do |t|
    t.integer "person_id"
    t.date    "check_in",  :null => false
    t.date    "check_out", :null => false
    t.integer "group_id"
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
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
