Rails.application.routes.draw do
  devise_for :users
  resources :tweets, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  root to: "tweets#index"

  get '/:username', to: "profile#index"
end
