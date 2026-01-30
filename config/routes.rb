Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :create_cat do
    collection do
      get :staff_credentials
    end
  end
  root 'create_cat#index'
end
