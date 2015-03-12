require 'rails_helper'

RSpec.describe 'routes for users' do
  it 'routes POST /users to the users controller' do
    expect(post('/users')).to route_to('users#create')
  end

  it 'routes POST /users/sign_in to the users controller' do
    expect(post('/users/sign_in')).to route_to('users#sign_in')
  end
end
