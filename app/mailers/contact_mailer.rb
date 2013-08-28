#encoding: utf-8

class ContactMailer < ActionMailer::Base
	default :to => @contact.email, :from => "QPC Partners <no-reply@qpcpartners.com>"

  def thank_you_email(contact)
  	@contact = contact
  	mail(:subject => "Thank you for contacting QPC Partners")
  end

  def thank_you_email_cn(contact)
  	@contact = contact
  	mail(:subject => "QPC Partners - 您发的信息已收到")
  end
end
