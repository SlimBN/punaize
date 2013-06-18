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

ActiveRecord::Schema.define(:version => 20130614092144) do

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.string   "preview"
    t.text     "content"
    t.string   "slug"
    t.integer  "user_id"
    t.integer  "blog_category_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "boards", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "slug"
    t.integer  "user_id"
    t.integer  "cover_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "icon"
    t.string   "slug"
    t.text     "description"
    t.boolean  "activated"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "pun_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "flag"
    t.integer  "continent_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "currencies", :force => true do |t|
    t.string   "name"
    t.string   "symbol"
    t.boolean  "enabled"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "followings", :force => true do |t|
    t.integer  "user_id"
    t.integer  "follower_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "followings", ["follower_id"], :name => "index_followings_on_follower_id"
  add_index "followings", ["user_id"], :name => "index_followings_on_user_id"

  create_table "impressions", :force => true do |t|
    t.string   "impressionable_type"
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "view_name"
    t.string   "request_hash"
    t.string   "ip_address"
    t.string   "session_hash"
    t.text     "message"
    t.text     "referrer"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "impressions", ["controller_name", "action_name", "ip_address"], :name => "controlleraction_ip_index"
  add_index "impressions", ["controller_name", "action_name", "request_hash"], :name => "controlleraction_request_index"
  add_index "impressions", ["controller_name", "action_name", "session_hash"], :name => "controlleraction_session_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "ip_address"], :name => "poly_ip_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "request_hash"], :name => "poly_request_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "session_hash"], :name => "poly_session_index"
  add_index "impressions", ["impressionable_type", "message", "impressionable_id"], :name => "impressionable_type_message_index"
  add_index "impressions", ["user_id"], :name => "index_impressions_on_user_id"

  create_table "likings", :force => true do |t|
    t.integer  "pun_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "likings", ["pun_id"], :name => "index_likings_on_pun_id"
  add_index "likings", ["user_id"], :name => "index_likings_on_user_id"

  create_table "mains", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "puns", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.string   "image"
    t.string   "link"
    t.float    "price"
    t.integer  "currency_id"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "original_user_id"
    t.integer  "board_id"
    t.integer  "original_board_id"
    t.integer  "original_punaise_id"
    t.boolean  "deleted"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "tag_list"
  end

  create_table "puns_tags", :force => true do |t|
    t.integer "pun_id"
    t.integer "tag_id"
  end

  add_index "puns_tags", ["pun_id"], :name => "index_puns_tags_on_pun_id"
  add_index "puns_tags", ["tag_id"], :name => "index_puns_tags_on_tag_id"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tags", ["content"], :name => "index_tags_on_content", :unique => true

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "avatar"
    t.string   "slug"
    t.integer  "country_id"
    t.integer  "state_id"
    t.boolean  "is_admin"
    t.boolean  "is_moderator"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
