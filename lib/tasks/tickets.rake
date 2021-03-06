require "rake"

namespace :tickets do
  desc "it reminds users with their tickets' due_date"
  task send_due_date_reminders: :environment do
    tickets = Ticket.joins(:assigned_user)
      .by_due_date(Date.current)
      .by_assigned_user_due_time(Time.current)

    tickets.each do |ticket|
      TicketsDeadlineReminderJob.perform_later(ticket.id)
    end
  end
end
