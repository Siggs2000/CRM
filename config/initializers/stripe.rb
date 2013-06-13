Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_IxdWFutrPLsd604S9LfQ52he'],
  :secret_key      => ENV['sk_test_B484iWxivk2m4aYK5YWWrHBh']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]