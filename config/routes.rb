Rails.application.routes.draw do
  get 'persons/profile', as: 'user_root'
  root 'welcome#index'
  devise_for :users
  resources :pizzas
  resources :orders
  resources :urls
  resources :notes
end
