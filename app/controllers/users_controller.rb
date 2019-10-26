class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @completed_games = current_games
    @current_games = current_games
  end

  def completed_games
    if user_signed_in?
      @played_games = Game.where('black_player_id = ? or white_player_id = ?', current_user.id, current_user.id).order('updated_at').to_a.first
    end
  end

  def current_games
    if user_signed_in?
      @current_games = Game.where('black_player_id = ? or white_player_id = ?', nil, nil).first
    end
  end

end

