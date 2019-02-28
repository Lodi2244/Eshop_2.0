# frozen_string_literal: true

Rails.application.routes.draw do
  get 'carts/show'
  get 'cart/index'
  get 'cart/show'
  get 'cart/update'
  get 'cart/destroy'
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/update'
  get 'orders/destroy'
  devise_for :users
  resources :users
  resources :items

  resources :categories do
    resources :items, only: %i[index show]
  end

  resources :home do
    resources :items, only: [:index]
  end

  root 'home#index'
end
