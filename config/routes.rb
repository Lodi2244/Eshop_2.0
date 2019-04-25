# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :items
  resources :carts, only: %i[show update destroy]
  resources :orders
  resources :item_orders, only: %i[create update destroy]
  resources :home, only: %i[index]

  resources :categories do
    resources :items, only: %i[index show]
  end
  root 'home#index'
end
