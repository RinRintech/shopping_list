Rails.application.routes.draw do
  get 'lists/index'
  devise_for :users
  root to: "top#index"
    resources :lists
end
