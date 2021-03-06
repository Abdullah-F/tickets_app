class TicketsDeadlineReminderJob < ApplicationJob
  queue_as :default

  def perform(ticket_id)
    ticket = Ticket.eager_load(:assigned_user).find(ticket_id)
    Notifications::DueDateReminder.new(ticket: ticket).deliver
  end
end
