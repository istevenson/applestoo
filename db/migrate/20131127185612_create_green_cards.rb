class CreateGreenCards < ActiveRecord::Migration
  def change
    create_table :green_cards do |t|
      t.string :adjective
      t.references :player
      t.timestamps
    end
  end
end
