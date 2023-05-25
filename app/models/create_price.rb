class CreatePrice < ApplicationRecord
require 'stripe'

Stripe.api_key = ENV['STRIPE_SECRET_KEY']

starter_subscription = Stripe::Product.create(
    name: 'Starter Subscription',
    description: '12/Month Subscription',
)

starter_subscription_price = Stripe::Price.create(
    currency: 'usd',
    unit_amount: 1200,
    recurring: {interval: 'month'},
    product: starter_subscription['id'],
)

# puts "Success! Here is the starter subscription product ID: #{starter_subscription['id']}"
# puts "Success! Here is the starter subscription price ID: #{starter_subscription_price['id']}"

end