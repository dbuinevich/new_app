require 'rails_helper'
require_relative '../support/devise.rb'

RSpec.describe User, type: :request do
  describe "GET /" do

    context "GET #index" do
      it '200 status with authorized admin' do
        admin = FactoryBot.create(:user, admin: true)
        sign_in admin
        get users_path
        expect(response).to have_http_status(:success)
      end
    end
  end


end