class ContactMailer < ActionMailer::Base
  default from: "gregory@qpcpartners.com"

  def thank_you_email(contact)
  	@contact = contact
  	mail(:to => contact.email, :subject => "Thank you for contacting QPC Partners")
  end
end
