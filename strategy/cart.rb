# frozen_string_literal: true

require_relative 'item'

# Class representing a shopping cart.
class Cart
  attr_accessor :items, :discount_strategy

  def initialize
    @items = []
    @discount_strategy = NoDiscount.new
  end

  def add_item(item)
    @items << item
  end

  def total_price
    total = @items.reduce(0) { |sum, item| sum + item.price }
    @discount_strategy.apply(total).to_f.round(2)
  end
end
