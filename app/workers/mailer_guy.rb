class MailerGuy

	include Sidekiq::Worker
	sidekiq_options retry: false

	def perform contact_id
		@contact = Contact.find_by_id contact_id
		ContactMailer.thank_you_email(@contact).deliver
		NotifyMailer.notify_email(@contact).deliver
	end

	# def self.send_emails contact_id
	# 	bg do
	# 		ContactMailer.thank_you_email(contact_id).deliver
	# 		NotifyMailer.notify_email(contact_id).deliver
	# 	end
	# end

	# def self.bg &block
	# 	Thread.new do
	# 		yield
	# 		ActiveRecord::Base.connection.close
	# 	end
	# end

end