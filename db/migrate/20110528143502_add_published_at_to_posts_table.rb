class AddPublishedAtToPostsTable < ActiveRecord::Migration
  def self.up
    add_column :posts, :published_at, :date
  end

  def self.down
    remove_column :posts, :published_at
  end
end
