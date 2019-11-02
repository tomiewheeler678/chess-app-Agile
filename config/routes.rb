Rails.application.routes.draw do
  devise_for :users
  root 'pawn_stars#index'
  resources :users, only: :show
  resources :games, only: [:new, :create, :show]

  authenticated :user do
    root 'users#index'
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end

  resources :conversations do
    resources :messages
  end

end

