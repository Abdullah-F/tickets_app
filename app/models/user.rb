class User < ApplicationRecord
  EMAIL_REGEX = /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/.freeze

  enum send_due_date_reminder: {on_due_date: 0, one_day_before: 1}

  validates_format_of :email,:with => EMAIL_REGEX
end
