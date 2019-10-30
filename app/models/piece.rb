class Piece < ApplicationRecord
  belongs_to :game
  belongs_to :user, required: false

  def color
    white? ? 'white' : 'black'
  end

  def white?
    white
  end

  def black
    !white
  end

  def image
    image ||= "#{name}.png"
  end

  def name
    "#{self.type}_#{self.white ? 'white' : 'black'}"
  end
  
end
