Rails.application.routes.draw do
  resources :donations
  resources :shelters
  root "static#home"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: "users#new"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
