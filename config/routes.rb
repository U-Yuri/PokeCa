Rails.application.routes.draw do
  devise_for :users
  get 'pokeca/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pokeca, only: [:index]
end
