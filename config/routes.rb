Rails.application.routes.draw do
  # root 'sessions#home'

  ## USER RESOURCE IS LEFT UP HERE AS A REMINDER. NOW, SIGNUPSCONTROLLER IS HANDLING USERS.
  # resource :users, only: [:new, :create, :edit, :update, :show, :destroy]

  # resource (singular) for things that won't need any more than 1 thing at a time, like a user's session
  resource :session
  resource :sign_up
  resource :about_us, controller: 'about_us'
  resource :career_page

  # resources (plural) for things that need multiple instances, i.e. the cats 
  resources :passwords, param: :token
  resources :create_cat
  
  root 'create_cat#index'
end
