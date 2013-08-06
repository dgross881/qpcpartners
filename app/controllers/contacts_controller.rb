class ContactsController < ApplicationController

  def new
  	@contact = Contact.new(params[:contact])

  	respond_to do |format|
  		if @contact.save
  			MailerGuy.perform_async @contact.id
        session[:contact] = params[:contact]
  			flash[:success] = "Thank you for contacting us today, #{contact_name(@contact)}!  We'll get back to you as soon as we can."
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

  def current_url
    request.original_url
  end

	def contact_name contact
		name = contact.name.split(' ')
		name.size > 2 ? contact.name : name[0]
	end

end
