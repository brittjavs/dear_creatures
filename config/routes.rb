Rails.application.routes.draw do
  root "static#home"
  get '/signin', to: "session#new"
  post '/signin', to: "sessions#create"
  get '/logout', to: 'sessions#destroy'

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
