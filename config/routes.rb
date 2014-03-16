DataEngineering::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :file_uploads, except: [:edit, :update]

  # You can have the root of your site routed with "root"
  root 'file_uploads#new'
end
