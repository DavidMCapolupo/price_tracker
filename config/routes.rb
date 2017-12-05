Rails.application.routes.draw do
  get 'tracker/index'
  get 'tracker/new'
  resources :tracker
  get 'product/index'
  
    
  resources :retailers
  get 'static_pages/home'
    
  get 'static_pages/help'

  get 'static_pages/about'

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
