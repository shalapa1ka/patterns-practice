# frozen_string_literal: true

require_relative 'loader'

# Step 1: Create a new Lead instance
lead = Lead.new

# Step 2: Create observers (EmailNotifier and SlackNotifier)
email_notifier = EmailNotifier.new
slack_notifier = SlackNotifier.new

# Step 3: Add observers to the lead
lead.add_observer(email_notifier)
lead.add_observer(slack_notifier)

# Step 4: Change the state of the lead and notify observers
lead.change_state('contacted')
lead.change_state('qualified')

# Step 5: Remove the EmailNotifier observer
lead.remove_observer(email_notifier)

# Step 6: Change the state of the lead and notify remaining observers
lead.change_state('won')

# Step 7: Remove the SlackNotifier observer
lead.remove_observer(slack_notifier)

# Step 8: Change the state of the lead (no observers to notify)
lead.change_state('closed')

# Output:
# Email notification sent: Lead status changed to: contacted
# Slack notification sent: Lead status changed to: contacted
# Email notification sent: Lead status changed to: qualified
# Slack notification sent: Lead status changed to: qualified
# Slack notification sent: Lead status changed to: won

