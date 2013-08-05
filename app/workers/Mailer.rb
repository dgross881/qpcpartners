class Mailer
	include Sidekiq::Worker

	def send contact, url
		ContactMailer.thank_you_email(contact).deliver
		NotifyMailer.notify_email(contact).deliver and return
	end

end