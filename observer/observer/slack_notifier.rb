# frozen_string_literal: true

require_relative 'observer'

# SlackNotifier is an observer that sends notifications to Slack when the subject's state changes.
class SlackNotifier
  include Observer

  def update(subject)
    message = "Lead status changed to: #{subject.state}"
    puts "Slack notification sent: #{message}"
  end
end
