FactoryBot.define do
  factory :user do
    name { "MyString" }
    email { "MyString" }
    send_due_date_reminder { "" }
    due_date_reminder_interval { 1 }
    due_date_reminder_time { "2021-03-05 21:24:32" }
    time_zone { "MyString" }
  end
end
