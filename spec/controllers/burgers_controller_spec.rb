require 'rails_helper'

RSpec.describe BurgersController do

  describe 'GET index' do
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq 200
    end
  end

  describe 'GET show' do
    it 'has a 200 status code' do
      FactoryGirl.create(:burger)
      get :show, id: Burger.first.id
      expect(response.status).to eq 200
    end
  end

  # describe '#create' do
  #   it 'adds a burger to db' do
  #     burger = Burger.new(name: 'The Sound and the Curry')
  #     post :create, burger: burger.attributes
  #     expect(response.status).to eq 201
  #   end
  # end

end
