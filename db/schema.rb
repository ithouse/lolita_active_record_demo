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

ActiveRecord::Schema.define(:version => 20110323221437) do

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lolita_files", :force => true do |t|
    t.string  "asset"
    t.string  "name"
    t.string  "fileable_type"
    t.integer "fileable_id"
    t.string  "asset_extension", :limit => 12
    t.integer "asset_size"
  end

  add_index "lolita_files", ["asset_size"], :name => "index_lolita_files_on_asset_size"
  add_index "lolita_files", ["fileable_type", "fileable_id"], :name => "index_lolita_files_on_fileable_type_and_fileable_id"
  add_index "lolita_files", ["fileable_type"], :name => "index_lolita_files_on_fileable_type"

end
