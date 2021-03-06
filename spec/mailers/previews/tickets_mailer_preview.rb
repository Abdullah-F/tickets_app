# Preview all emails at http://localhost:3000/rails/mailers/tickets_remainder_mailer
class TicketsMailerPreview < ActionMailer::Preview
  def due_date_reminder
    ticket = Ticket.new(assigned_user: User.new(email: "user@email.com"))
    TicketsMailer.with(ticket: ticket).due_date_reminder
  end
end
