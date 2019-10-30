class AddWhiteToPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :white, :boolean
  end
end
