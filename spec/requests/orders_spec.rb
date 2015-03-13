require 'rails_helper'

describe 'GET Requests' do
  before(:all) do
    Order.destroy_all
    @orders = FactoryGirl.create_list(:order, 10)
  end
  describe '#index' do
    it 'gets all past orders' do
      get '/orders'
      expect(response).to be_success
      json = JSON.parse(response.body)
      expect(json.length).to eq 10
    end
  end
  describe '#show' do
    it 'should retrieve a single order by id and return json' do
      @order = @orders.first
      get "/orders/#{@order.id}"
      expect(response).to be_success
      order = JSON.parse(response.body)
      expect(order['total_price']).to eq @order.total_price.to_s
    end
  end
  describe '#create' do
    it 'should create a new order' do

      Stripe.api_key = ENV["TEST_SECRET_KEY"]
      token = Stripe::Token.create(
                :card => {
                  :number => "4242424242424242",
                  :exp_month => 3,
                  :exp_year => 2016,
                  :cvc => "314"
                },
              )
      post '/orders',
      { order: {
        total_price: 9.75,
        stripe_token: token.id
      } }.to_json,
      {
        'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s
      }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
      order = JSON.parse(response.body)
      expect(order['total_price']).to eq '9.75'
      expect(order['stripe_transaction']).to eq Order.last.stripe_transaction

    end
  end
end
