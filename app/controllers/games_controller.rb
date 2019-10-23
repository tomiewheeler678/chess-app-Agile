class GamesController < ApplicationController
  before_action :authenticate_user!
  before_action :verify_different_user

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    redirect_to game_path(@game)
  end

  def show
    unless game.present?
      return redirect_to index_path
    end
  end

  def update
  end

  def join
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
