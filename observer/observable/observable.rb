# frozen_string_literal: true

# The Observable module provides a mechanism to manage a list of observers
# and notify them of changes to the state of the object.
module Observable
  def add_observer(observer)
    observers << observer
  end

  def remove_observer(observer)
    observers.delete(observer)
  end

  def notify_observers
    observers.each do |observer|
      observer.update(self)
    end
  end

  private

  def observers
    @observers ||= []
  end
end
