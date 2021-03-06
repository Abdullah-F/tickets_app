class TicketsMailer < ApplicationMailer
  def due_date_reminder
    @ticket = params[:ticket]
    mail(to: @ticket.assigned_user.email, subject: "You got a new order!")
  end
end
