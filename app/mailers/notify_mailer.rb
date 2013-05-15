class NotifyMailer < ActionMailer::Base
  default from: "gregory@qpcpartners.com"

  def notify_email(contact)
  	@contact = contact
  	mail(:to => contact.email, :subject => "Thank you for contacting QPC Partners")
  end
end
