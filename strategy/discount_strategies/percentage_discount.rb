# frozen_string_literal: true


require_relative 'discount_strategy'

# Strategy for applying a percentage discount.
class PercentageDiscount
  def initialize(discount)
    @discount = discount
  end

  def apply(price)
    price - (price * @discount / 100.0)
  end
end
