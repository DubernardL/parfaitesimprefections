Rails.application.routes.draw do
  root to: 'pages#home'

  resources :categories, only: [:show]
  resources :items, only: [:index, :show]
  resources :contacts, only: [:new, :create]

end
