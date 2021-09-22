Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: 'prototypes#index'
  resources :prototypes do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
