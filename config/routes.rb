Rails.application.routes.draw do
  root "static#home"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: "users#new"
  resources :users
  resources :donations
  resources :shelters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
