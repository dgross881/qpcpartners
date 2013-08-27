Qpcpartners::Application.configure do
	config.action_mailer.delivery_method = :smtp
	config.action_mailer.smtp_settings = {
	  enable_starttls_auto: false,
	  address: 'smtpout.secureserver.net',
	  port: 25,
	  domain: 'www.qpcpartners.com',
	  authentication: 'plain',
	  user_name: ENV['SMTP_USER'],
	  password: ENV['SMTP_PASSWORD']
	}
end