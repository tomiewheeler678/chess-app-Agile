Rails.application.routes.draw do
  resources :articles
  devise_for :users
  root 'pawn_stars#index'
  resources :users, only: :show
  resources :games, only: [:new, :create, :show]

  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'chat_rooms#index'

end

