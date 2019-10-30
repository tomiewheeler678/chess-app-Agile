class AddXPosToPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :x_pos, :integer
  end
end
