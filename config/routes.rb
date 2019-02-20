# frozen_string_literal: true

Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/update'
  get 'orders/destroy'
  devise_for :users
  resources :users
  resources :items
  resources :carts, only: %i[show update destroy]

  resources :categories do
    resources :items, only: %i[index show]
  end

  resources :home do
    resources :items, only: [:index]
  end

  root 'home#index'
end
