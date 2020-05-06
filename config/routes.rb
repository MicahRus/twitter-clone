Rails.application.routes.draw do
  devise_for :users
  resources :tweet
  root to: "users#index"
end
