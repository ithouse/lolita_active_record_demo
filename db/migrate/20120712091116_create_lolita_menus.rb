class CreateLolitaMenus < ActiveRecord::Migration
  def self.up
    create_table :lolita_menus, :force=>true do |t|
      t.string  :name
      t.timestamps
    end

    add_index :lolita_menus,:name
  end

  def self.down
    drop_table :lolita_menus
  end
end
