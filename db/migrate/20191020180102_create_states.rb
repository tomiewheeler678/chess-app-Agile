class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.integer :piece_id
      t.integer :player_id
      t.integer :x_position
      t.integer :y_position
      t.integer :game_id
      t.timestamps
    end
  end
end
