Rails.application.routes.draw do
  resources :users
  resources :foods
  resources :posts
  resources :restaurants


  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout'

  get 'amazon/sign_key'
end
