# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090401051429) do

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "author"
    t.string   "email_author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "web_site"
    t.text     "body"
    t.integer  "post_id",    :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.binary   "data",              :limit => 16777215
    t.integer  "file_file_size",    :limit => 11
    t.datetime "file_updated_at"
    t.string   "name"
  end

  create_table "portfolios", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "author"
    t.string   "email_author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.datetime "date"
    t.integer  "blog_id",    :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
  end

  create_table "posts_photos", :id => false, :force => true do |t|
    t.integer "post_id",  :limit => 11
    t.integer "photo_id", :limit => 11
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :default => "", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works", :force => true do |t|
    t.string   "title"
    t.text     "signature"
    t.integer  "portfolio_id", :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works_photos", :id => false, :force => true do |t|
    t.integer "work_id",  :limit => 11
    t.integer "photo_id", :limit => 11
  end

end
