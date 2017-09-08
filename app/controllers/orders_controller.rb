# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :set_order, only: [:show]

  def show; end

  def update; end

  private

  attr_reader :order

  def set_order
    @order = Order.includes(:products).find_by(link: params[:link])
    not_found unless order
  end

  def not_found
    render file: Rails.root.join('public', '404.html'), status: 404
  end
end
