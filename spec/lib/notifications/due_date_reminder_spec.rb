require 'rails_helper'

RSpec.describe Notifications::DueDateReminder do
  describe '#deilver' do
    subject do
      described_class.new(ticket: double)
    end

    let(:delivery_methods) { [double('delivery_method', deilver: nil)] }
    it 'fires up all delivery methods' do
      subject.delivery_methods = delivery_methods
      delivery_methods.each { |m| expect(m).to receive(:deliver) }
      subject.deliver
    end
  end
end
