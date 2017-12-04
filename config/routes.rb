Rails.application.routes.draw do
  get 'product/index'
  resources :products
  resources :retailers
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
