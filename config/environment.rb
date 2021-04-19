# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'quora4tra.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
