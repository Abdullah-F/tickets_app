class Ticket < ApplicationRecord
  belongs_to :assigned_user, class_name: User.name
  validates_presence_of :title, :description, :due_date

  scope :by_due_date, ->(due_date) { where(due_date: due_date) }
  scope :by_assigned_user_due_time, ->(due_time) {
    where("users.due_date_reminder_time = '#{due_time_db_format(due_time)}'")
  }

  def self.due_time_db_format(due_time)
    due_time
      .change({day: 1, month: 1, year: 2000})
      .beginning_of_minute.to_s(:db)
  end
end
