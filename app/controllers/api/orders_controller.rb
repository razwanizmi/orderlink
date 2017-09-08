# frozen_string_literal: true

module Api
  class OrdersController < Api::ApplicationController
    def index
      @orders = Order.includes(:products).all
    end
  end
end
