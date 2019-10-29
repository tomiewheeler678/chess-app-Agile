class Game < ApplicationRecord
  has_many :pieces
  has_many :users

  after_create :initialize_pieces

  def square_filled?(x_pos, y_pos)
    if pieces.where("(x_pos = ? AND y_pos = ?)", x_pos, y_pos).any?
      return true
    else
      return false
    end
  end

  def initialize_pieces

    (1..8).each do |x_pos|
      Pawn.create(game_id: id, color: true, x_pos: x_pos, y_pos: 7, user_id: white_player_id, name: "white-pawn")
    end
  end
   
end
