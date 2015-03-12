require 'rails_helper'

describe 'GET Requests' do
  before(:all) do
    Ingredient.destroy_all
    @ingredients = FactoryGirl.create_list(:ingredient, 25)
  end
  describe '#index' do
    it 'gets all the ingredients' do
      get '/ingredients'
      expect(response).to be_success
      json = JSON.parse(response.body)
      expect(json.length).to eq 25
    end
  end
end
