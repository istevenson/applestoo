class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.references :green_card
      t.references :point_total

      t.timestamps
    end
  end
end
