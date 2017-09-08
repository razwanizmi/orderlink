# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :products, only: [:index]
  end

  get '/:link', to: 'orders#show'
end
