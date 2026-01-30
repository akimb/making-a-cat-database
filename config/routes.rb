Rails.application.routes.draw do
  resources :create_cat do
    collection do
      get :staff_credentials
    end
  end
  root 'create_cat#index'
end
