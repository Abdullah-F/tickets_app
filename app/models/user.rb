class User < ApplicationRecord
  enum send_due_date_reminder: {on_due_date: 0, one_day_before: 1}
end
