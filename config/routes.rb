Rails.application.routes.draw do
  resources :users
  resources :foods, only: [:index, :create]
  resources :posts, only: [:index, :create]


  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout'

  get 'amazon/sign_key'
end
