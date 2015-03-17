class Order < ActiveRecord::Base
  has_many :burger_orders
  has_many :burgers, through: :burger_orders

  def charge(params)


    Stripe.api_key = ENV["TEST_SECRET_KEY"]

    # Get the credit card details submitted by the form
    token = params["order"]["stripe_token"]

    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => (params["order"]["total_price"].to_i * 100).to_i, # amount in cents, again
        :currency => "usd",
        :source => token,
        :description => "Sweet sweet burgers"
      )
      rescue Stripe::CardError => e
      # The card has been declined
    end

  end
end


