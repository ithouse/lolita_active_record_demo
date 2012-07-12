class AddSlugToTextPages < ActiveRecord::Migration
  def change
    add_column :text_pages, :slug, :string
    add_index :text_pages, :slug
  end
end
