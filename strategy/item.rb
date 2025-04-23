# frozen_string_literal: true

# Class representing an item in a shopping cart.
class Item
  attr_accessor :name, :price, :discount_strategy

  def initialize(name, price, discount_strategy = NoDiscount.new)
    @name = name
    @price = price
    @discount_strategy = discount_strategy
  end

  def final_price
    @discount_strategy.apply(@price)
  end
end
