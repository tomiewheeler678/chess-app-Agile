Rails.application.routes.draw do
  devise_for :users
  root 'pawn_stars#index'
  resources :users, only: :show
  resources :games, only: [:new, :create, :show]

end

