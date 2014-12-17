Rails.application.routes.draw do
  resources :users
  resources :foods do
    resources :posts
  end

  resources :posts do
    resources :food_images
    resources :likes
  end
  resources :food_images
  resources :likes


  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout'

  get 'amazon/sign_key'
end
