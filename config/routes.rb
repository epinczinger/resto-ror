Rails.application.routes.draw do
  resources :categories
  get 'menu/index'
  devise_for :users
  resources :products
  
  get 'menu', to: 'menu#index'

  root 'pages#home'
  get 'catering', to: 'pages#catering'
  get 'info', to: 'pages#info'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
