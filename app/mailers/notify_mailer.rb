class NotifyMailer < ActionMailer::Base
  default to: "tathman@gmail.com", from: "tathman@gmail.com"

  def notify_email(contact)
  	# needs to mail both chinese and english versions
  	@contact = contact
  	mail(to: "ryan.lindgren@gmail.com", subject: "New message received from 'qpcpartners.com'.")
  end
end
