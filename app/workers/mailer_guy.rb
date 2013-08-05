class MailerGuy
	include Sidekiq::Worker

	def perform contact
		ContactMailer.thank_you_email(contact).deliver
		NotifyMailer.notify_email(contact).deliver
	end

end