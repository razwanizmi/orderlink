class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :link
      t.string :name
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.string :postcode
      t.string :phone_number
      t.float :price
      t.string :payment_proof
      t.boolean :paid, default: false
      t.boolean :delivered, default: false

      t.timestamps
    end
  end
end
