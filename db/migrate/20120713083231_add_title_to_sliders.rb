class AddTitleToSliders < ActiveRecord::Migration
  def change
    add_column :sliders, :title, :string
  end
end
