# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

    
config.action_mailer.delivery_method = :smtp 
host = 'https://photo-app-rails-7.herokuapp.com'

config.action_mailer.default_url_options = { host: host }  

# SMTP settings for gmail
config.action_mailer.smtp_settings = { 

:address => 'smtp.gmail.com',

:port => '587',

:authentication => :plain,

:user_name => ENV['GMAIL_USERNAME'],     

:password => ENV['GMAIL_PASSWORD'],     

:domain => 'gmail.com',   

:enable_starttls_auto => true }
