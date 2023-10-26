Rails.application.routes.draw do
  root to: 'top#index'

    devise_for :users
    resources :lists
    delete '/logout', to: 'sessions#destroy', as: :logout
    
end
