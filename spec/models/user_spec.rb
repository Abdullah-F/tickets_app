require "rails_helper"

RSpec.describe User, type: :model do
  describe '.send_due_date_reminders' do
    let(:send_due_date_reminders) do
      {
        on_due_date: 0,
        one_day_before: 1,
      }
    end
    it 'maps keys to values correctly' do
      expect(send_due_date_reminders)
        .to eq(described_class.send_due_date_reminders.symbolize_keys)
    end
  end
end
