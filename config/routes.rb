# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :products, only: [:index]
    resources :orders, only: [:index, :create]
  end

  resources :orders, only: [:update] do
    member do
      put :bill
    end
  end
  get '/:link', to: 'orders#show'
end
