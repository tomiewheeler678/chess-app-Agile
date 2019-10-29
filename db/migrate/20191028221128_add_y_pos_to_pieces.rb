class AddYPosToPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :y_pos, :integer
  end
end
