Rails.application.routes.draw do
  resources :groups
  resources :status_updates
  resources :profiles
  devise_for :users
  root to: 'home#index'
  # get 'home/index', to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
