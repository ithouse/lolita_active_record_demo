class UpdateDocumentsWithNewColums1 < ActiveRecord::Migration
  def self.up
    add_column :documents, :description, :text
    add_column :documents, :is_public, :boolean
    add_column :documents, :position, :integer
  end

  def self.down
    remove_column :documents, :description
    remove_column :documents, :is_public
    remove_column :documents, :position
  end
end
