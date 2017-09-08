# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :order_products
  has_many :products, through: :order_products

  validates :link, uniqueness: true

  before_create :set_link
  after_touch :update_price

  private

  def update_price
    update(price: order_products.map(&:line_price).sum)
  end

  def set_link
    self.link = new_link
  end

  def new_link
    characters.sample(12).join
  end

  def characters
    ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
  end
end
