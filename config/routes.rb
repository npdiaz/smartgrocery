Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/recipes", to: 'pages#recipes'

  resources :lists do
    resources :ingredients, only: [:index, :new, :create, :edit ]
    collection do
      get "bought", to: "ingredients#bought"
    end
  end

end
