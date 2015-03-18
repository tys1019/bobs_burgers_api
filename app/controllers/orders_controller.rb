require 'pry'
class OrdersController < ApplicationController
  before_filter :authenticate, only: [:index]
  def index
      token = request.env["HTTP_AUTHORIZATION"].gsub(/Token token=/,'')
      @user = User.find_by(token: token)

      @orders = @user.orders.all
      render json: @orders, status: 200
  end

  def show
    @order = Order.find(params[:id])
    render json: @order, status: 200
  end

  def create
    token = request.env["HTTP_AUTHORIZATION"].gsub(/Token token=/,'')
    @user = User.find_by(token: token)

    if token == "undefined"
      @order = Order.new(order_params)
    else
      @order = @user.orders.new(order_params)
    end

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
