Rails.application.routes.draw do
  root "static#home"

  get '/signup', to: "users#new"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: 'sessions#destroy'
  get '/auth/google_oauth2/callback' => 'sessions#omniauth'

  resources :shelters, only: [:index, :show] do
    resources :donations, only: [:new, :create]
  end
  
  resources :users, only: [:create, :show] do
    resources :donations, only: [:index, :new, :create]
  end

  resources :donations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

