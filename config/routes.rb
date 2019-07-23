# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#index', as: 'home'
  get 'persons/profile', as: 'user_root'
  devise_for :users
  resources :pizzas
  resources :orders
  resources :urls
  resources :notes
end
