Rails.application.routes.draw do
  devise_for :users
  
  resources :tweets, only: [:new, :show, :index]
  
  resources :likes, only: [:new, :create, :destroy]
 
  resources :users

  root to: "tweets#index"

  # resources :users do
  #   resources :tweets do
  #     resources :likes
  #   end
  # end

  resources :tweets do
    resources :likes
  end

  get '/:username/follow', to: 'relationship#create', as: :follow

  resources :tweets

  get '/:username', to: "profile#index", as: :profile
end
