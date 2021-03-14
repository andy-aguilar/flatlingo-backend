Rails.application.routes.draw do
  resources :user_decks, only: :create
  resources :cards, only: [:create, :edit, :update, :destroy]
  resources :decks, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :login, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "/login", to: "users#login"

end
