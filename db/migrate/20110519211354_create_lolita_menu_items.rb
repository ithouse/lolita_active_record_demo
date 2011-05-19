class CreateLolitaMenuItems < ActiveRecord::Migration
  def self.up
    create_table :lolita_menu_items, :force=>true do |t|
      t.string  :name
      t.string  :url
      t.integer :menu_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth
      t.integer :parent_id
      t.boolean :is_visible
      t.timestamps
    end

    add_index :lolita_menu_items, :menu_id
    add_index :lolita_menu_items, [:lft,:rgt,:menu_id,:parent_id]
    add_index :lolita_menu_items, :lft # for sorting
    add_index :lolita_menu_items, :rgt
    add_index :lolita_menu_items, :depth
    add_index :lolita_menu_items, :parent_id
    add_index :lolita_menu_items, :is_visible
  end

  def self.down
    drop_table :menu_items
  end
end
