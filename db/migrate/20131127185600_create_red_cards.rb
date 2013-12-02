class CreateRedCards < ActiveRecord::Migration
  def change
    create_table :red_cards do |t|
      t.string :noun
      t.string :description
      t.references :board

      t.timestamps
    end
  end
end
