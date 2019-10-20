class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :white_player_id
      t.integer :black_player_id
      t.integer :winning_player_id
      t.integer :turn
      t.boolean :open, default: false
      t.timestamps
    end
  end
end
