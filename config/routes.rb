Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :lists do
    resources :ingredients, only: [:index, :new, :create, :edit ]
  end
end
