Rails.application.routes.draw do
  devise_for :users
  root 'pawn_stars#index'
end
