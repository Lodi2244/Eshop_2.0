# frozen_string_literal: true

Rails.application.routes.draw do
  get 'item_order/create'
  get 'item_order/update'
  get 'item_order/destroy'
  devise_for :users
  resources :items
  resources :carts, only: %i[show update destroy]
  resources :orders
  resources :item_orders
  resources :home, only: %i[index]

  resources :categories do
    resources :items, only: %i[index show]
  end
  root 'home#index'
end
