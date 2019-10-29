class Piece < ApplicationRecord
  belongs_to :game
  belongs_to :user

  def color
    white ? 'white' : 'black'
  end

  def white
    color
  end

  def black
    !color
  end

  def name
    "#{self.type}_#{self.color ? 'white' : 'black'}"
  end
  
end
