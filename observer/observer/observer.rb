# frozen_string_literal: true

# This module defines the Observer interface for the Observer design pattern.
# It requires implementing the `update` method, which will be called when the subject's state changes.
#
# @example
#   class ConcreteObserver
#     include Observer
#
#     def update(subject)
#       # Handle the update from the subject
#     end
#   end
module Observer
  def update(subject)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
