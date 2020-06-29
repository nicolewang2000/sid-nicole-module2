Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#main'
  resources :users, only: [:show, :new, :create, :edit, :update]
  resources :books
  resources :clubs

end
