class CreateLolitaUploadFiles < ActiveRecord::Migration
  class << self
    
    def up
      create_table :lolita_files, :force=>true do |f|
        f.string  :asset
        f.string  :name
        f.string  :fileable_type
        f.integer :fileable_id
        f.string  :asset_extension, :limit=>12
        f.integer :asset_size
      end

      add_index :lolita_files, [:fileable_type,:fileable_id]
      add_index :lolita_files, :fileable_type
      add_index :lolita_files, :asset_size
    end

    def down
      drop_table :lolita_files
    end
  end
end