Rails.application.routes.draw do
  root 'home#index'

  resources :projects do
    resource :activate,   only: :create, controller: 'project/activate'
    resource :deactivate, only: :create, controller: 'project/deactivate'
  end
end
