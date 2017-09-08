# frozen_string_literal: true

module Api
  class ProductsController < Api::ApplicationController
    def index
      @products = Product.all
    end
  end
end
