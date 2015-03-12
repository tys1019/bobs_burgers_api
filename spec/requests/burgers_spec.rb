require 'rails_helper'
require 'pry'

describe 'Burger Requests' do

  describe '#index' do
    before(:all) do
      Burger.destroy_all
      @burgers = FactoryGirl.create_list(:burger, 25)
    end

    it 'gets all the burgers' do
      get '/burgers'
      expect(response).to be_success
      burgers = JSON.parse(response.body)
      expect(burgers.length).to eq 25
    end
  end

  describe '#show' do
    it 'gets one burger' do
      burger = FactoryGirl.create(:burger)
      get "/burgers/#{burger.id}"
      expect(response).to be_success
      json = JSON.parse(response.body)
      expect(json["name"]).to eq burger.name
    end
  end

  describe '#create' do
    it 'creates a burger' do
      tomato = Ingredient.create(name: "tomato", category: "vegetable")
      lettuce = Ingredient.create(name: "lettuce", category: "vegetable")

      post '/burgers/',
      { burger: {
        name: 'Test Burger',
        ingredients: [tomato, lettuce]
      } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
       expect(response).to be_success
       expect(response.content_type).to be Mime::JSON

       burger = JSON.parse(response.body)
       expect(burger["name"]).to eq "Test Burger"
       expect(Burger.last.ingredients.first).to eq(tomato)

    end
  end
end
