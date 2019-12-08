Rails.application.routes.draw do
  root "static#home"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: "users#new"
  resources :shelters
  resources :users do
    resources :donations, shallow: true
  end

  resources :donations

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
