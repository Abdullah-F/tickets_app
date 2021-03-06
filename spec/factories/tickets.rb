FactoryBot.define do
  factory :ticket do
    title { "MyString" }
    description { "MyText" }
    assigned_user_id { 1 }
    due_date { Date.current }
    status_id { 1 }
    progress { 1 }
  end
end
