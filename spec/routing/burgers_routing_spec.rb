require "rails_helper"

RSpec.describe 'routes for burgers' do
  it 'routes GET /burgers to burgers controller' do
    expect(get('/burgers')).to route_to('burgers#index')
  end

  it 'routes GET /burgers/:id to burgers controller' do
    expect(get('/burgers/1')).to route_to('burgers#show', id: "1")
  end

  it 'routes POST /burgers to burgers controller' do
    expect(post('/burgers')).to route_to('burgers#create')
  end
end
