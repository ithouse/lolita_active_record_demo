class RemoveSliders < ActiveRecord::Migration
  def up
    drop_table :sliders
  end

  def down
  end
end
