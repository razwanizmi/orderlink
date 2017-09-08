# frozen_string_literal: true

Order.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('orders')

4.times do
  order = Order.create!(
    name: Faker::Name.name,
    address_one: Faker::Address.street_address,
    address_two: '',
    city: ['Shah Alam', 'Petaling Jaya', 'Subang Jaya', 'Cyberjaya'].sample,
    state: 'Selangor',
    postcode: rand(10000..99999),
    phone_number: "01#{rand(10000000..99999999)}",
    paid: false,
    delivered: false
  )

  Product.all.sample([1, 2, 3].sample).each do |product|
    order.order_products.create(
      product_id: product.id,
      quantity: [1, 2].sample
    )
  end
end

2.times do
  order = Order.create!(
    name: Faker::Name.name,
    address_one: Faker::Address.street_address,
    address_two: '',
    city: ['Shah Alam', 'Petaling Jaya', 'Subang Jaya', 'Cyberjaya'].sample,
    state: 'Selangor',
    postcode: rand(10000..99999),
    phone_number: "01#{rand(10000000..99999999)}",
    paid: true,
    delivered: true
  )

  Product.all.sample([1, 2, 3].sample).each do |product|
    order.order_products.create(
      product_id: product.id,
      quantity: [1, 2].sample
    )
  end
end
