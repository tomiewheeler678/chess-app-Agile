class GamesController < ApplicationController
  before_action :authenticate_user!

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    redirect_to game_path(@game)
  end

  def show
    unless game.present?
      return redirect_to root_path
    end
  end

  def update
  end

  def player_join_as_black
    @game = Game.find(params[:id])
    return render_not_found if @game.nil?
    @game.update_attribute(:black_player_id, current_user.id)
    redirect_to game_path(@game.id)
  end

  def player_join_as_white
    @game = Game.find(params[:id])
    return render_not_found if @game.nil?
    @game.update_attribute(:white_player_id, current_user.id)
    redirect_to game_path(@game.id)
  end

  def relinquish
  end

  def destroy
  end

  private

  def game 
    @game ||= Game.where(id: params[:id]).last
  end

  def game_params
    params.require(:game).permit(:black_player_id, :white_player_id, :game_id)
  end
end
