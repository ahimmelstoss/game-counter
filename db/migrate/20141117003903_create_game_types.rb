class CreateGameTypes < ActiveRecord::Migration
  def change
    create_table :game_types do |t|
      t.integer :game_id
      t.string :name
      t.timestamps null: false
    end
  end
end
