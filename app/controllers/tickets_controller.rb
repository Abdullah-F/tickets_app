class TicketsController < ApplicationController
  def create
    Ticket.create!(create_params)
    head(:created)
  rescue ActiveRecord::RecordInvalid => e
    render json: e.message, status: :unprocessable_entity
  end

  private

  def create_params
    params
      .require(:ticket)
      .permit(:title, :description, :assigned_user_id, :due_date)
  end
end
