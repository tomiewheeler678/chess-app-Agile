module GamesHelper
  def square_class(y_pos, x_pos)
    if y_pos % 2 == x_pos % 2
      return "white-square"
    else
      return "black-square"
    end
  end

  def audio_path(source, options = {})
    path_to_asset(source, {type: :audio}.merge!(options))
  end

end
