Rails.application.routes.draw do
  # root 'sessions#home'

  resource :users, only: [:new, :create, :edit, :update, :show, :destroy]

  resource :session
  resource :sign_up
  resource :about_us, controller: 'about_us'

  resources :passwords, param: :token
  resources :create_cat
  
  root 'create_cat#index'
end
