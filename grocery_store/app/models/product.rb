class Product < ApplicationRecord
has_many :sales
belongs_to :category

def self.show_list
	puts "#{index} - Name - Quantity - Price - Discount"
	Products.first(10).each do |p,index|
		puts "#{index} - #{p.name} - #{p.qty} - #{p.price} - #{p.discount}"
	end
end

def shop
	show_list
	choose_product
end

def choose_product
	puts "Enter the name of the product name:"
	product_name = gets.chomp
	puts "Enter the Quantity:"
	quantity = gets.chomp
	product = Produts.find_by_name "product_name"
	product.quantity = product.quantity - quantity
	product.save
	if !product
		return [nil,nil]
	else
		return [product,quantity]	
	end
end




end