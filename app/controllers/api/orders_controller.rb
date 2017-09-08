# frozen_string_literal: true

module Api
  class OrdersController < Api::ApplicationController
    def index
      @orders = Order.includes(:products).all
    end

    def create
      @order = Order.new(order_params)
      return bad_request unless order.save
    end

    private

    attr_reader :order

    def order_params
      params.permit(:name, :address_one, :address_two, :city, :state,
                    :postcode, :phone_number,
                    order_products_attributes: [:product_id, :quantity])
    end

    def bad_request
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end
end
