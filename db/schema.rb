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

ActiveRecord::Schema.define(:version => 20110904184818) do

  create_table "orders", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.date     "order_date"
    t.float    "total"
    t.integer  "subs_duration"
    t.string   "subs_period"
  end

  create_table "shirts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "style"
    t.string   "fabric"
    t.float    "price"
    t.integer  "order_id"
  end

  create_table "styles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "collar"
    t.string   "cuff"
    t.string   "pocket"
    t.string   "placket"
    t.boolean  "acc_collar"
    t.boolean  "acc_cuff"
    t.boolean  "acc_placket"
    t.string   "notes"
    t.integer  "shirt_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin"
    t.integer  "height_ft"
    t.integer  "height_in"
    t.integer  "weight_lb"
    t.string   "body_type"
    t.integer  "fave_garm_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
