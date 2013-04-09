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

ActiveRecord::Schema.define(:version => 20130409171829) do

  create_table "comments", :force => true do |t|
    t.integer  "author_id"
    t.text     "body"
    t.integer  "reply_id"
    t.integer  "post_id"
    t.integer  "points"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["author_id"], :name => "index_comments_on_author_id"
  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"
  add_index "comments", ["reply_id"], :name => "index_comments_on_reply_id"

  create_table "emails", :force => true do |t|
    t.integer  "user_id"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "emails", ["user_id"], :name => "index_emails_on_user_id"

  create_table "posts", :force => true do |t|
    t.string   "link"
    t.integer  "author_id"
    t.integer  "points"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
  end

  add_index "posts", ["author_id"], :name => "index_posts_on_author_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.integer  "points"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["username"], :name => "index_users_on_username"

end
