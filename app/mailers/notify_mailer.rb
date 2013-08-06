class NotifyMailer < ActionMailer::Base
  default to: "tathman@gmail.com", from: "tathman@gmail.com"

  def notify_email(contact)
  	@contact = contact
  	mail(to: "ryan.lindgren@gmail.com", subject: "New message received from 'qpcpartners.com'.")
  end
end
