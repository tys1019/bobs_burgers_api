require 'rails_helper'

describe 'Burger Requests' do

  before(:all) do
    Burger.destroy_all
    Ingredient.destroy_all
    @burgers = FactoryGirl.create_list(:burger, 25)
    FactoryGirl.create(:ingredient)
    FactoryGirl.create(:ingredient)
  end

  describe '#index' do


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
      first_ingredient = Ingredient.first.name
      last_ingredient = Ingredient.create!(name: 'pineapple', category: 'premium', price: 1.5).name

      post '/burgers/',
      { burger: {
        name: 'Test Burger',
        ingredients: [first_ingredient, last_ingredient]
      } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
       expect(response).to be_success
       expect(response.content_type).to be Mime::JSON

       burger = JSON.parse(response.body)
       expect(burger["name"]).to eq "Test Burger"
       expect(burger['ingredients'][0]['name']).to eq(first_ingredient)
       expect(burger['price']).to eq "8.0"

       burger_last = Burger.last
       expect(burger_last.name).to eq "Test Burger"
       expect(burger_last.ingredients[0]['name']).to eq(first_ingredient)
       expect(burger_last.price).to eq 8.0
    end
  end
end
