Qpcpartners::Application.configure do
	config.action_mailer.delivery_method :smtp
	config.action_mailer.smtp_settings = {
	  enable_starttls_auto: true,
	  address: 'smtp.gmail.com',
	  port: 587,
	  domain: 'gmail.com',
	  authentication: 'plain',
	  user_name: 'tathman@gmail.com',
	  password: IO.read(File.join(Rails.root, '/config/mailpass.txt'))
	}
end