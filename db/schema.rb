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

ActiveRecord::Schema.define(:version => 20110519211354) do

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.boolean  "is_public"
    t.integer  "position"
  end

  create_table "lolita_files", :force => true do |t|
    t.string   "asset"
    t.string   "name"
    t.string   "fileable_type"
    t.integer  "fileable_id"
    t.string   "asset_extension", :limit => 12
    t.integer  "asset_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lolita_files", ["asset_size"], :name => "index_lolita_files_on_asset_size"
  add_index "lolita_files", ["fileable_type", "fileable_id"], :name => "index_lolita_files_on_fileable_type_and_fileable_id"
  add_index "lolita_files", ["fileable_type"], :name => "index_lolita_files_on_fileable_type"

  create_table "lolita_menu_items", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "menu_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.integer  "parent_id"
    t.boolean  "is_visible"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lolita_menu_items", ["depth"], :name => "index_lolita_menu_items_on_depth"
  add_index "lolita_menu_items", ["is_visible"], :name => "index_lolita_menu_items_on_is_visible"
  add_index "lolita_menu_items", ["lft", "rgt", "menu_id", "parent_id"], :name => "index_lolita_menu_items_on_lft_and_rgt_and_menu_id_and_parent_id"
  add_index "lolita_menu_items", ["lft"], :name => "index_lolita_menu_items_on_lft"
  add_index "lolita_menu_items", ["menu_id"], :name => "index_lolita_menu_items_on_menu_id"
  add_index "lolita_menu_items", ["parent_id"], :name => "index_lolita_menu_items_on_parent_id"
  add_index "lolita_menu_items", ["rgt"], :name => "index_lolita_menu_items_on_rgt"

  create_table "lolita_menus", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lolita_menus", ["name"], :name => "index_lolita_menus_on_name"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
