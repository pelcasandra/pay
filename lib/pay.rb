require 'braintree'
require 'stripe'
require 'pay/engine'
require 'pay/billable'
require_relative 'pay/stripe/charge_succeeded'
require_relative 'pay/stripe/charge_refunded'
require_relative 'pay/subscription/stripe'
require_relative 'pay/subscription/braintree'

module Pay
  # Define who owns the subscription
  mattr_accessor :billable_class
  mattr_accessor :billable_table
  mattr_accessor :braintree_gateway

  @@billable_class = 'User'
  @@billable_table = @@billable_class.tableize

  def self.setup
    yield self
  end
end
