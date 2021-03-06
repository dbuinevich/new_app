require 'rails_helper'

RSpec.describe Offer, type: :request do
  context "GET #index" do
    it 'returns a success response' do
      get offers_path
      expect(response).to have_http_status(200)
    end
  end

  context "GET #new" do
    it 'returns a success response' do
      get new_offer_path
      expect(response).to have_http_status(200)
    end
  end
end
