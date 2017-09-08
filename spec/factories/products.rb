# frozen_string_literal: true

FactoryGirl.define do
  factory :product do
    name { Faker::Commerce.product_name }
    price { Faker::Commerce.price }
    image_url "https://lorempixel.com/400/400/"
  end
end
