class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
  	create_table :customers do |t|
      t.string  :name
      t.string  :phone_number
      t.date 		:yob
      t.boolean :is_employee
      t.timestamp
    end
      add_index :customers,:phone_number,unique: true,name: "cust_uniq_index"
  end
end