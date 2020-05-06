Rails.application.routes.draw do
  devise_for :users
  resources :tweets, only: [:new, :show, :index]
  resources :likes, only: [:new, :create]
  root to: "tweets#index"

  # resources :users do
    resources :tweets do
      resources :likes
    end
  # end
end
