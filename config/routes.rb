Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :likes
  end
  root to: 'home#index'
  get '/home', to: 'home#index'
  get '/wall', to: 'home#wall'
end
