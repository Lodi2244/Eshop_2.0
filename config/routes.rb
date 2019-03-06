# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :items
  resources :carts, only: %i[show update destroy]

  resources :home do
    resources :categories
  end

  resources :categories do
    resources :items, only: %i[index show]
  end

  root 'home#index'
end
