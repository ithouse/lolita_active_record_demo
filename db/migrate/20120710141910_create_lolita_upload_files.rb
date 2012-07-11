class CreateLolitaUploadFiles < ActiveRecord::Migration
  def change
    create_table :lolita_files, :force=>true do |t|
      t.string  :asset
      t.string  :name
      t.string  :fileable_type
      t.integer :fileable_id
      t.string  :asset_extension, :limit=>12
      t.integer :asset_size
      t.timestamps
    end

    add_index :lolita_files, [:fileable_type,:fileable_id]
    add_index :lolita_files, :fileable_type
    add_index :lolita_files,:asset_size
    add_index :lolita_files, :created_at
  end
end