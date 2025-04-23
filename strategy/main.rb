# frozen_string_literal: true

require_relative 'loader'

laptop = Item.new('Laptop', 1000, PercentageDiscount.new(10))
phone = Item.new('Phone', 500.99, FixedAmountDiscount.new(50))
pc = Item.new('PC', 1500)
cart = Cart.new

cart.add_item(laptop)
cart.add_item(phone)
cart.add_item(pc)
puts "Total price after discount: #{cart.total_price}"

# Apply fixed discount to the cart
cart.discount_strategy = FixedAmountDiscount.new(100)
puts "Total price after fixed discount: #{cart.total_price}"

# Apply percentage discount to the cart
cart.discount_strategy = PercentageDiscount.new(21)
puts "Total price after percentage discount: #{cart.total_price}"
