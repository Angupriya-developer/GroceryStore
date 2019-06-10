class Customer < ApplicationRecord
has_many :sales
has_many :products,:through => :sales

def self.get_details
	puts "Enter the register number"
	register_no = gets.chomp
	puts "Are you a existing Customer [E] or New customer [N]? "
	customer_type = gets.chomp
	case 
	when "E"
		puts "Enter the phone number"
			phone_no = gets.chomp
			c = Customer.find_by_phone_number
			return c
	when "N"
		puts "Enter Name: "
			customer_name = gets.chomp
		puts "Enter Mobile number"
			mobile_no = gets.chomp
		puts "Enter your year of birth:"
			yob = gets.chomp.to_i
		puts "Are you employee of grocery store [Y/N]"
			is_employee = gets.chomp
		Customer.create({:name => customer_name,:mobile_no => mobile_no,:yob => yob,:is_employee => is_employee}) 
		end
end



end