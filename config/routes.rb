# frozen_string_literal: true

Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/update'
  get 'orders/destroy'
  devise_for :users
  resources :users
  root 'home#index'
end
