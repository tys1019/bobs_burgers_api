require 'rails_helper'
require 'byebug'

describe 'User requests' do

  before(:all) do
    User.destroy_all
    FactoryGirl.create_list(:user, 10)
  end

  describe '#create' do
    it 'creates a user' do
      post '/users',
      { user: {
          name: 'Test Testerson',
          email: 'test@test.com',
          password: 'testtest',
          address: '02130'
        } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      json = JSON.parse(response.body)
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
      expect(json['token']).to eq User.last.token
    end
  end

  describe '#sign_in' do
    it 'signs a user in and returns a token' do
      user = User.create(name: 'Test Testerson', email: 'test@test.com', password: 'testtest',)

      post '/users/sign_in',
      { email: user.email, password: user.password }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

      json = JSON.parse(response.body)
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
      expect(json['token']).to eq user.token

    end
  end
end
