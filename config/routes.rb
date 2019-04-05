Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :lists do
    resources :ingredients, only: [ :new, :create, :edit ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
