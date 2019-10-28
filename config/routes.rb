Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  root 'pawn_stars#index'
  resources :users, only: :show
  resources :games, only: [:new, :create, :show]
=======
 devise_for :users
 root 'pawn_stars#index'
 resources :users, only: :show
 resources :games, only: [:new, :create, :show]
>>>>>>> 91ca71d35155ff24e6b999aaceb5a76a61aa11d3
end

