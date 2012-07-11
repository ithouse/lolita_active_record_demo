class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :content
      t.date :publication_date
      t.boolean :draft

      t.timestamps
    end
  end
end
