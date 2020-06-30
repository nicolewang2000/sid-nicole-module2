Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :users, only: [:show, :new, :create, :edit, :update]
  # resources :books
  # resources :clubs
  # root 'sessions#new'

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  
  get "/users/:id", to: "users#show"
  
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  
  delete "/logout", to: "sessions#destroy"

  resources :users

end
