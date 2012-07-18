class AddActiveToSliders < ActiveRecord::Migration
  def change
    add_column :sliders, :active, :boolean
  end
end
