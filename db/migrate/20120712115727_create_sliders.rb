class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|

      t.timestamps
    end
  end
end
