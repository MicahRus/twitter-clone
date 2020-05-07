Rails.application.routes.draw do
  devise_for :users
  resources :tweets, only: [:new, :show, :index]
  root to: "tweets#index"

  get '/:username', to: "profile#index"
end
