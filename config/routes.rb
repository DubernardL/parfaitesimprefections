Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/atelier", to: "pages#atelier", as: 'atelier'

  resources :categories, only: [:show]
  resources :items, only: [:index, :show]
  resources :contacts, only: [:new, :create]
  resources :cart_items, only: [:create, :destroy]
  resources :carts, only: [:show]
  get "carts/:cart_id/empty", to: "carts#empty", as: 'empty_cart'
  resources :orders, only: [:index, :show, :create] do
    resources :payments, only: [:new]
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
