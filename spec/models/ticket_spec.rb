require "rails_helper"

RSpec.describe Ticket, type: :model do
  describe "associations" do
    it { should belong_to(:assigned_user).class_name(User.name) }
  end

  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:due_date) }
    it { should validate_presence_of(:description) }
  end
end
