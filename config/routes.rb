Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :new, :create, :edit, :update]
  resources :books
  resources :clubs
  # root 'sessions#new'

end
