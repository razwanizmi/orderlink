# frozen_string_literal: true

json.key_format! camelize: :lower

json.id @order.id
json.link "https://orderlink.herokuapp.com/#{@order.link}"
json.name @order.name
json.address_one @order.address_one
json.address_two @order.address_two
json.postcode @order.postcode
json.city @order.city
json.state @order.state
json.phone_number @order.phone_number
json.price @order.price
json.paid @order.paid
json.payment_proof @order.payment_proof&.url
json.delivered @order.delivered

json.products do
  json.array! @order.order_products do |oi|
    json.id oi.product.id
    json.name oi.product.name
    json.image_url oi.product.image_url
    json.price oi.product.price
    json.quantity oi.quantity
  end
end
