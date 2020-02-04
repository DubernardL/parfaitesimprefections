Rails.application.routes.draw do
  root to: 'pages#home'

  resources :categories, only: [:show] do
    resources :items, only: [:index]
  end
end
