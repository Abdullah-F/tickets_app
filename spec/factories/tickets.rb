FactoryBot.define do
  factory :ticket do
    title { "MyString" }
    description { "MyText" }
    assigned_user_id { 1 }
    due_date { "2021-03-05" }
    status_id { 1 }
    progress { 1 }
  end
end
