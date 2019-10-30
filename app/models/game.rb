class Game < ApplicationRecord
  has_many :pieces
  has_many :users

  after_create :initialize_pieces!

  def square_filled?(x_pos, y_pos)
    if pieces.where("(x_pos = ? AND y_pos = ?)", x_pos, y_pos).any?
      return true
    else
      return false
    end
  end

  def initialize_pieces!
    #pawns
    #white
    (1..8).each do |x_pos|
      Pawn.create(game_id: id, white: true, x_pos: x_pos, y_pos: 7, user_id: white_player_id, name: "Pawn_white")
    end
    #black
    (1..8).each do |x_pos|
      Pawn.create(game_id: id, white: false, x_pos: x_pos, y_pos: 2, user_id: black_player_id, name: "Pawn_black")
    end

    #knights
    #white
    [2, 7].each do |x_pos|
      Knight.create(game_id: id, white: true, x_pos: x_pos, y_pos: 8, user_id: white_player_id, name: "Knight_white")
    end
    #black
    [2, 7].each do |x_pos|
      Knight.create(game_id: id, white: false, x_pos: x_pos, y_pos: 1, user_id: black_player_id, name: "Knight_black")
    end

    #rooks
    #white
    [1, 8].each do |x_pos|
      Rook.create(game_id: id, white: true, x_pos: x_pos, y_pos: 8, user_id: white_player_id, name: "Rook_white")
    end
    #black
    [1, 8].each do |x_pos|
      Rook.create(game_id: id, white: false, x_pos: x_pos, y_pos: 1, user_id: black_player_id, name: "Rook_black")
    end

    #bishops
    #white
    [3, 6].each do |x_pos|
      Bishop.create(game_id: id, white: true, x_pos: x_pos, y_pos: 8, user_id: white_player_id, name: "Bishop_white")
    end
    #black
    [3, 6].each do |x_pos|
      Bishop.create(game_id: id, white: false, x_pos: x_pos, y_pos: 1, user_id: black_player_id, name: "Bishop_black")
    end

    #queens
    #white
    [4].each do |x_pos|
      Queen.create(game_id: id, white: true, x_pos: x_pos, y_pos: 8, user_id: white_player_id, name: "Queen_white")
    end
    #black
    [4].each do |x_pos|
      Queen.create(game_id: id, white: false, x_pos: x_pos, y_pos: 1, user_id: black_player_id, name: "Queen_black")
    end

    #kings
    #white
    [5].each do |x_pos|
      King.create(game_id: id, white: true, x_pos: x_pos, y_pos: 8, user_id: white_player_id, name: "King_white")
    end
    #black
    [5].each do |x_pos|
      King.create(game_id: id, white: false, x_pos: x_pos, y_pos: 1, user_id: black_player_id, name: "King_black")
    end
  end
   
end
