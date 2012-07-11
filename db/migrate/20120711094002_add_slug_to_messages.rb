class AddSlugToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :slug, :string
    add_index :messages, :slug
  end
end
