class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.references :player
      t.references :green_card
      t.references :red_card
      t.timestamps
    end
  end
end
