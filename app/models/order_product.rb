# frozen_string_literal: true

class OrderProduct < ApplicationRecord
  belongs_to :order, touch: true
  belongs_to :product

  def line_price
    quantity * product.price
  end
end
