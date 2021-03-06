FactoryBot.define do
  factory :user do
    name { "MyString" }
    send_due_date_reminder { 0 }
    due_date_reminder_interval { 1 }
    due_date_reminder_time { Time.current }
    time_zone { "MyString" }

    sequence(:email) do |n|
      "email_#{n}@test.com"
    end
  end
end
