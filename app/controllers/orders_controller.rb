# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :set_order_from_link, only: [:show]
  before_action :set_order, only: [:update, :bill]

  def show
    gon.client_token = generate_client_token
  end

  def update
    order.update(order_params)
    flash[:success] =
      'File has been successfully updated and is now pending confirmation '\
      'from the seller.'
    redirect_to "/#{order.link}"
  end

  def bill
    result = Braintree::Transaction.sale(
      amount: order.price,
      payment_method_nonce: params[:payment_method_nonce]
    )
    if result.success?
      order.update(paid: true)
      flash[:success] =
        'Transaction successful and is now pending delivery from the seller.'
      redirect_to "/#{order.link}"
    else
      flash.now[:alert] =
        'Sorry, looks like something went wront. Please try again.'
      gon.client_token = generate_client_token
      render :show
    end
  end

  private

  attr_reader :order

  def order_params
    params.require(:order).permit(:payment_proof)
  end

  def set_order
    @order = Order.includes(:products).find_by(id: params[:id])
  end

  def set_order_from_link
    @order = Order.includes(:products).find_by(link: params[:link])
    not_found unless order
  end

  def not_found
    render file: Rails.root.join('public', '404.html'), status: 404
  end

  def generate_client_token
    Braintree::ClientToken.generate
  end
end
