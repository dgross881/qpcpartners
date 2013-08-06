class ContactMailer < ActionMailer::Base
  default from: "tathman@gmail.com"

  def thank_you_email(contact)
  	@contact = contact
  	mail(:to => @contact.email, :subject => "Thank you for contacting QPC Partners")
  end
end
