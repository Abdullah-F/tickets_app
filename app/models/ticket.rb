class Ticket < ApplicationRecord
  belongs_to :assigned_user, class_name: User.name
  validates_presence_of :title, :description, :due_date
end
