class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :type
      t.string :symbol
      t.boolean :color, default: false
      t.timestamps
    end
  end
end
