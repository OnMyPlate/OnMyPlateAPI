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
  resources :bookmarks


  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout'

  get 'amazon/sign_key'

  post 'email/confirm', to: 'user_confirmation#email_to_user'
end
