require 'rails_helper'

RSpec.describe Notifications::DeliveryMethods::Mail do
  describe '#deilver' do
    subject do
      described_class.new(
        mailer: TicketsMailer,
        mailer_method: :due_date_reminder,
        params: Hash.new
      )
    end
    it 'sends and email to the user' do
      expect(TicketsMailer).to receive_message_chain(
        :with,
        :send,
        :deliver_now
      )
      subject.deliver
    end
  end
end
