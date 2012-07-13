class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :asset
      t.string :name
      t.references :fileable, :polymorphic => true
      t.string :asset_extension
      t.integer :asset_size
      t.string :description
      
      t.timestamps
    end
    add_index :pictures, :fileable_id
  end
end
