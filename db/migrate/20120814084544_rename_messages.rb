class RenameMessages < ActiveRecord::Migration
  def self.up
    rename_table :messages, :articles
  end

  def self.down
    rename_table :articles, :messages
  end
end
