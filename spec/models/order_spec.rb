require 'rails_helper'

RSpec.describe Order do
  describe '.create' do
    it 'creates a new Order' do
      expect(Order.create()).to be_a Order
    end

    it 'returns a stripe charge string' do

    end


  end
end
