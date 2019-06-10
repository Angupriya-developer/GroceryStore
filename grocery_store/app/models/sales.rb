class Sales < ApplicationRecord

	belongs_to :products
	belongs_to :customer

def purchase
	customer_details = Customer.get_details
	product,quantity = Products.shop
	if product
		Sales.create_entry(customer_details,product,quantity)
		Products.show_list
	else
		"No such product exist"
	end
end

def create_entry(customer_details,product,quantity)
	s = Sales.new
	s.customer_id = customer_details.id
	s.product_id = product.id
	s.quantity = quantity
	s.discount = calculate_discount
	#inclusive of discount
	if(s.discount > 0)
		s.price = product.price - (product.price * (s.discount/100))
	else
		s.price = product.price
	end
end

def calculate_discount
	if(product.discount > 0)
		discount = (product.discount/100)
	elsif(customer_details.is_employee == "y")
		discount = 5
	elsif customer_details.age > 60 #senior citizen
		discount = 10
	else
		discount = 0
	end
end

end