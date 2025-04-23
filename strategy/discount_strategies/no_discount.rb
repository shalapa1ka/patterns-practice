# frozen_string_literal: true

require_relative 'discount_strategy'

# Strategy for applying no discount.
class NoDiscount
  def apply(price)
    price
  end
end
