Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :categories, only: [:show]
  resources :items, only: [:index, :show]
  resources :contacts, only: [:new, :create]
  resources :carts, only: [:index]
  resources :cart_items, only: [:create]

end
