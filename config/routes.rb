Rails.application.routes.draw do

  resources :users, except: [:new, :edit, :update]
  resources :foods, except: [:new, :edit]
  resources :posts, except: [:new, :edit]
  resources :food_images, only: [:index, :create, :update]
  resources :likes, except: [:new, :edit, :update]
  resources :bookmarks, only: [:index, :create, :destroy]


  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout'
  post '/does_exist', to: 'users#does_exist?'
  post '/current_user', to: 'users#current_user'

  get 'amazon/sign_key'

  post 'email/confirm', to: 'user_confirmation#email_to_user'
  get 'confirm_email/:username', to: 'user_confirmation#confirm_member'
  post 'get_confirm', to: 'user_confirmation#get_confirm'
end
