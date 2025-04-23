# frozen_string_literal: true

require_relative 'discount_strategy'

# Strategy for applying a fixed amount discount.
class FixedAmountDiscount
  def initialize(amount)
    @amount = amount
  end

  def apply(price)
    [price - @amount, 0].max
  end
end
