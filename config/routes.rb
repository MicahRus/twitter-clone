Rails.application.routes.draw do
  devise_for :users
  resources :tweets, only: [:new, :show, :index]
  root to: "tweets#index"
end
