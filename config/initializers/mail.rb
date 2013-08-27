Qpcpartners::Application.configure do
	config.action_mailer.delivery_method :smtp
	config.action_mailer.smtp_settings = {
	  enable_starttls_auto: true,
	  address: 'smtpout.secureserver.net',
	  port: 80,
	  domain: 'www.qpcpartners.com',
	  authentication: 'plain',
	  user_name: 'rlindgren@qpcpartners.com',
	  password: IO.read(File.join(Rails.root, '/config/mailpass.txt'))
	}
end