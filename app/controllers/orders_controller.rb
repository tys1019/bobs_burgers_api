require 'pry'
class OrdersController < ApplicationController
  before_filter :authenticate, only: [:index]
  def index
    @orders = Order.all
    render json: @orders, status: 200
  end

  def show
    @order = Order.find(params[:id])
    render json: @order, status: 200
  end

  def create
    @order = Order.new(order_params)
    @order.stripe_transaction = @order.charge(params)

    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:items, :total_price, :stripe_token)
  end

end
