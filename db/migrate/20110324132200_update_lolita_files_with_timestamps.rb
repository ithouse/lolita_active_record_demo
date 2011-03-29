class UpdateLolitaFilesWithTimestamps < ActiveRecord::Migration
  class << self
    def up
      add_column :lolita_files,:created_at,:datetime
      add_column :lolita_files, :updated_at,:datetime
    end

    def down
      remove_column :lolita_files,:created_at,:datetime
      remove_column :lolita_files,:updated_at, :datetime
    end
  end
end