require "rails_helper"

RSpec.describe "tickets", type: :request do
  describe "POST tickets#create" do
    context "when all params are valid" do
      let(:user) do
        create(:user)
      end

      let(:ticket_params) do
        {ticket: attributes_for(:ticket, assigned_user_id: user.id)}
      end

      it "creates a ticket" do
        post "/tickets", params: ticket_params
        expect(response).to have_http_status(:created)
      end
    end

    context "when params are invalid" do
      let(:ticket_params) do
        {ticket: attributes_for(:ticket, assigned_user_id: nil)}
      end

      it "fails with :unprocessable_entity response code" do
        post "/tickets", params: ticket_params
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
