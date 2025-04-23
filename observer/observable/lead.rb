# frozen_string_literal: true

require_relative 'observable'

# Represents a lead with a state and a list of observers for state changes.
class Lead
  include Observable

  attr_reader :state

  def initialize(state = 'new')
    @state = state
  end

  def change_state(new_state)
    @state = new_state
    notify_observers
  end
end
