# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# config.action_mailer.delivery_method = :smtp 

config.action_mailer.default_url_options = { host: host, protocol: 'https' }   

ActionMailer::Base.smtp_settings = {     

:address => 'smtp.gmail.com',

:port => '587',

:authentication => :plain,

:user_name => ENV['GMAIL_USERNAME'],     

:password => ENV['GMAIL_PASSWORD'],     

:domain => 'gmail.com',   

:enable_starttls_auto => true }