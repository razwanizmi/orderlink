class OrdersController < ApplicationController
  before_action :set_order, only: [:show]

  def show; end

  private

  def set_order
    @order = Order.find_by(link: params[:link])
    not_found unless @order
  end

  def not_found
    render file: "#{Rails.root}/public/404.html", status: 404
  end
end
