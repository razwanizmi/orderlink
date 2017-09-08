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
      t.float :price
      t.boolean :paid, default: false
      t.boolean :delivered, default: false

      t.timestamps
    end
  end
end
