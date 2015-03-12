require 'rails_helper'

RSpec.describe 'routes for orders' do
  it 'routes GET /orders to the orders controller' do
    expect(get('/orders')).to route_to('orders#index')
    expect(get('/orders/1')).to route_to('orders#show', id: "1")
    expect(post('/orders')).to route_to('orders#create')
  end
end
