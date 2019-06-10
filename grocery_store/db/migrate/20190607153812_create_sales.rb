class CreateSales < ActiveRecord::Migration[5.2]
  def change
  	create_table :sales do |t|
      t.integer :product_id
      t.integer :customer_id
      t.integer :quantity
      t.integer :price
      t.integer :discount_in_percent
      t.timestamp
    end
  end
 end