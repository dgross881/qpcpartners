require 'uri'

class ContactsController < ApplicationController

  def new
  	@contact = Contact.new(params[:contact])

  	respond_to do |format|
  		if @contact.save
        send_notify_email @contact
        send_thank_you_email @contact
        set_session @contact
  			flash_success @contact
  			format.html { render template: 'pages/contact' }
  			format.json { render json: @contact, status: :created }
  		else
        set_session @contact
  			flash_failure @contact
        format.html { render template: 'pages/contact' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
  		end
  	end
  end

  private

  def set_session contact
    session[:contact] = contact.id
  end

  def flash_failure contact
    chinese? ?
    flash[:success] = "There was an error processing your message. Please make changes if designated below or contact us directly. Thank you!" :
    flash[:success] = "There was an error processing your message. Please make changes if designated below or contact us directly. Thank you!"
  end

  def flash_success contact
    chinese? ?
    flash[:success] = "Thank you for contacting us today, #{contact.name}!  We'll get back to you as soon as we can." :
    flash[:success] = "Thank you for contacting us today, #{contact.name}!  We'll get back to you as soon as we can."
  end

  def success_redirect
    chinese? ?
    redirect_to(URI.join('http://www.qpcpartners.com/', 'cn/', 'contact')) :
    redirect_to(controller: "pages", action: "contact")
  end

  def send_notify_email contact
    ContactMailer.thank_you_email_cn(contact).deliver
    ContactMailer.thank_you_email(contact).deliver
  end

  def send_thank_you_email contact
    chinese? ?
    NotifyMailer.notify_email_cn(contact).deliver :
    NotifyMailer.notify_email(contact).deliver
  end

  def chinese?
    current_url.include? '/cn'
  end

  def current_url
    request.original_url
  end

end
