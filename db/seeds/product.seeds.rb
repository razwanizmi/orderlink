Product.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('products')

Product.create!(
  name: 'Mince Gula-gula Kurus',
  price: 45.00,
  image_url: 'https://orderlink.herokuapp.com/images/mince.jpg'
)

Product.create!(
  name: 'Necklace Trend Star',
  price: 19.00,
  image_url: 'https://orderlink.herokuapp.com/images/necklace.jpg'
)

Product.create!(
  name: 'iPhone7 Premium Ultra Thin Case',
  price: 109.00,
  image_url: 'https://orderlink.herokuapp.com/images/case.jpg'
)

Product.create!(
  name: 'Sanaa Instant Scarf',
  price: 55.00,
  image_url: 'https://orderlink.herokuapp.com/images/scarf.jpg'
)

Product.create!(
  name: 'Car Steering Phone Holder',
  price: 25.00,
  image_url: 'https://orderlink.herokuapp.com/images/holder.jpg'
)
