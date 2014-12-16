Rails.application.routes.draw do
  resources :users
  resources :foods do
    resources :posts
  end
  resources :food_images


  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout'

  get 'amazon/sign_key'
end
