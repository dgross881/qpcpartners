class ContactsController < ApplicationController

  def new
  	@contact = Contact.new(params[:contact])

  	respond_to do |format|
  		if @contact.save
        send_notify_email(@contact)
        send_thank_you_email(@contact)
        session[:contact] = params[:contact]
  			flash[:success] = "Thank you for contacting us today, #{@contact.name}!  We'll get back to you as soon as we can."
  			format.html { redirect_to controller: "pages", action: "contact" }
  			format.json { render json: @contact, status: :created }
  		else
  			session[:contact] = params[:contact]
  			flash[:warning] = "There was an error processing your message. Please make changes if designated below or contact us directly. Thank you!"
        format.html { render template: 'pages/contact' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
  		end
  	end
  end

  private

  def send_thank_you_email contact
    chinese? ?
    ContactMailer.thank_you_email_cn(contact).deliver :
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
