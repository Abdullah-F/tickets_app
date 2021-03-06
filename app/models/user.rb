class User < ApplicationRecord
  before_save :reset_due_time_seconds

  EMAIL_REGEX = /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/.freeze

  enum send_due_date_reminder: {on_due_date: 0, one_day_before: 1}

  validates_format_of :email, with: EMAIL_REGEX

  private

  def reset_due_time_seconds
    self.due_date_reminder_time =
      due_date_reminder_time.in_time_zone.beginning_of_minute
  end
end
