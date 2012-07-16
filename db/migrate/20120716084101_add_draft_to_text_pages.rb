class AddDraftToTextPages < ActiveRecord::Migration
  def change
    add_column :text_pages, :draft, :boolean
  end
end
