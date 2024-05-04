Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pokeca#index"

  get "pokemon", to: "pokeca#index" 
  post "pokemon", to: "pokeca#create"
  get "deck/:id", to: "pokeca#deck", as: 'deck'
  post "deck/:id", to: "pokeca#CardInDeckCreate"
  delete "deck/cardindeck/:id", to: "pokeca#CardInDeckDelete", as: 'deck_cardindeck'
  # resources :pokeca, only: [:index]
end
