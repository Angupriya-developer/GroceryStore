class CreateProducts < ActiveRecord::Migration[5.2]
  def change
  	create_table :products do |t|
      t.string  :name
      t.integer :qty
      t.float   :price
      t.float   :discount_in_percent
      t.integer :category_id
      t.timestamp
    end
  end
end