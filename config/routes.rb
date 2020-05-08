Rails.application.routes.draw do
  devise_for :users
  
  resources :tweets, only: [:new, :show, :index]
  
  resources :likes, only: [:new, :create, :destroy]
  
  resources :users

  root to: "tweets#index"


     resources :tweets do
      resources :likes
    end
    
  resources :tweets

  get '/:username', to: "profile#index", as: :profile
end
