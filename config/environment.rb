# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Qpcpartners::Application.initialize!

Qpcpartners::Application.configure do
	config.action_mailer.delivery_method :smtp
	config.action_mailer.smtp_settings = {
	  enable_starttls_auto: true,
	  address: 'smtp.gmail.com',
	  port: 587,
	  authentication: 'plain',
	  user_name: 'tathman@gmail.com',
	  password: 'B0d0pm4f!'
	}
end