module GamesHelper
<<<<<<< HEAD
  def square_class(y_pos, x_pos)
    if y_pos % 2 == x_pos % 2
      return "white-square"
    else
      return "black-square"
    end
=======
  def audio_path(source, options = {})
    path_to_asset(source, {type: :audio}.merge!(options))
>>>>>>> 91ca71d35155ff24e6b999aaceb5a76a61aa11d3
  end
end
