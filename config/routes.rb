Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/recipes", to: 'pages#recipes'

  resources :lists do
    collection do
      get "bought", to: "ingredients#bought"
    end
    resources :ingredients, only: [:index, :new, :create, :edit ]
  end
end
