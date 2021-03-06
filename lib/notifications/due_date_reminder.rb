module Notifications
  class DueDateReminder
    attr_accessor :delivery_methods

    def initialize(params)
      @params = params
      @mailer_deliery_method = DeliveryMethods::Mail.new(
        params: @params,
        mailer_method: :due_date_reminder,
        mailer: TicketsMailer
      )
      @delivery_methods = [@mailer_deliery_method]
    end

    def deliver
      delivery_methods.each do |delivery_method|
        delivery_method.deliver
      end
      nil
    end
  end
end
