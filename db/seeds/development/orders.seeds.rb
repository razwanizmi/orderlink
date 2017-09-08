# frozen_string_literal: true

OrderProduct.delete_all
Order.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('order_products')
ActiveRecord::Base.connection.reset_pk_sequence!('orders')

order = Order.create!(
  name: 'Ahmad Albab',
  address_one: 'No 13, Persiaran Selangor Baru',
  address_two: '',
  city: 'Shah Alam',
  state: 'Selangor',
  postcode: '40100',
  paid: true,
  delivered: true
)

Product.all.each do |product|
  order.order_products.create(
    product_id: product.id,
    quantity: rand(1..5)
  )
end
