Rails.application.routes.draw do
  root "static#home"

  get '/signup', to: "users#new"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: 'sessions#destroy'

  resources :shelters, only: [:index, :show]
  
  resources :users, only: [:create, :show] do
    resources :donations, only: [:index, :new, :create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
