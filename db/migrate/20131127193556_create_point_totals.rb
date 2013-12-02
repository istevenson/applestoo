class CreatePointTotals < ActiveRecord::Migration
  def change
    create_table :point_totals do |t|
      t.integer :points
      t.references :player
      t.timestamps
    end
  end
end
