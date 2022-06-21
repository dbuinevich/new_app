require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'first name presence' do
      user = User.new(last_name: 'last', phone_num: 1234567, email: 'vasya@gmail.com', password: 'password', password_confirmation: 'password', admin: [false]).save
      expect(user).to eq(false)
    end

    it 'last name presence' do
      user = User.new(first_name: 'first', phone_num: 1234567, email: 'vasya@gmail.com', password: 'password', password_confirmation: 'password', admin: [false]).save
      expect(user).to eq(false)
    end

    it 'phone number presence' do
      user = User.new(first_name: 'first', last_name: 'last', email: 'vasya@gmail.com', password: 'password', password_confirmation: 'password', admin: [false]).save
      expect(user).to eq(false)
    end

    it 'email presence' do
      user = User.new(first_name: 'first', last_name: 'last', phone_num: 1234567, password: 'password', password_confirmation: 'password', admin: [false]).save
      expect(user).to eq(false)
    end

    it 'password presence' do
      user = User.new(first_name: 'first', last_name: 'last', phone_num: 1234567, email: 'vasya@gmail.com', password_confirmation: 'password', admin: [false]).save
      expect(user).to eq(false)
    end

    it 'password confirmation name presence' do
      user = User.new(first_name: 'first', last_name: 'last', phone_num: 1234567, email: 'vasya@gmail.com', password: 'password', admin: [false]).save
      expect(user).to eq(false)
    end

    it 'admin default false boolean presence' do
      user = User.new(first_name: 'first', last_name: 'last', phone_num: 1234567, email: 'vasya@gmail.com', password: 'password', password_confirmation: 'password').save
      expect(user).to eq(true)
    end

    it 'save successfully' do
      user = User.new(first_name: 'first', last_name: 'last', phone_num: 1234567, email: 'vasya@gmail.com', password: 'password', password_confirmation: 'password', admin: [false]).save
      expect(user).to eq(true)
    end

  end

  context 'scope tests' do
    # let (:params) { { first_name: 'first', last_name: 'last', phone_num: 1234567, email: 'vasya@gmail.com', password: 'password', password_confirmation: 'password' } }
    before (:each) do
      # User.new(params.merge(admin: [false])).save
      # User.new(params.merge(admin: [false])).save
      # User.new(params.merge(admin: [true])).save
      # User.new(params.merge(admin: [true])).save
      user1 = create(:user)
      user2 = create(:user)
      user3 = create(:user, admin: true)
      user4 = create(:user, admin: true)
    end

    it 'should return regular users' do
      expect(User.regular_users.size).to eq(2)
    end
    
    it 'should return admin users' do
      expect(User.admin_users.size).to eq(2)
    end

  end
end
