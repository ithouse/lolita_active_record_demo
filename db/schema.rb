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

ActiveRecord::Schema.define(:version => 20120713083231) do

  create_table "admins", :force => true do |t|
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

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "lolita_files", :force => true do |t|
    t.string   "asset"
    t.string   "name"
    t.string   "fileable_type"
    t.integer  "fileable_id"
    t.string   "asset_extension", :limit => 12
    t.integer  "asset_size"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "lolita_files", ["asset_size"], :name => "index_lolita_files_on_asset_size"
  add_index "lolita_files", ["created_at"], :name => "index_lolita_files_on_created_at"
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
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "lolita_menus", ["name"], :name => "index_lolita_menus_on_name"

  create_table "messages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.date     "publication_date"
    t.boolean  "draft"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "slug"
  end

  add_index "messages", ["slug"], :name => "index_messages_on_slug"

  create_table "pictures", :force => true do |t|
    t.string   "asset"
    t.string   "name"
    t.integer  "fileable_id"
    t.string   "fileable_type"
    t.string   "asset_extension"
    t.integer  "asset_size"
    t.string   "description"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "pictures", ["fileable_id"], :name => "index_pictures_on_fileable_id"

  create_table "sliders", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
  end

  create_table "text_pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "text_pages", ["slug"], :name => "index_text_pages_on_slug"

end
