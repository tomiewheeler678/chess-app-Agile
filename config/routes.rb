Rails.application.routes.draw do
  devise_for :users
  root 'pawn_stars#index'
  resources :users, only: [:show, :index]
  resources :games, only: [:new, :create, :show]

  authenticated :user do
    root 'users#index'
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end

  resources :conversations, only: [:show, :new] do
    resources :messages, only: :create
  end

end

