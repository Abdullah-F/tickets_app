module Notifications
  module DeliveryMethods
    class Mail
      attr_reader :mailer, :params, :mailer_method

      def initialize(mailer_info)
        @params = mailer_info.fetch(:params)
        @mailer = mailer_info.fetch(:mailer)
        @mailer_method = mailer_info.fetch(:mailer_method)
      end

      def deliver
        mailer.with(params).send(mailer_method)
      end
    end
  end
end
