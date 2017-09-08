# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :products, only: [:index]
    resources :orders, only: [:index]
  end

  resources :orders, only: [:update]
  get '/:link', to: 'orders#show'
end
