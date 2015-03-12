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
  get 'confirm_email/:username', to: 'user_confirmation#confirm_member'
  post 'get_confirm', to: 'user_confirmation#get_confirm'

  post '/admin', to: 'users#is_admin?'

  post '/does_exist', to: 'users#does_exist?'
end
