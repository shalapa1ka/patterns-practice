# frozen_string_literal: true

# Base abstract class for all strategies.
class DiscountStrategy
  def apply(price)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
