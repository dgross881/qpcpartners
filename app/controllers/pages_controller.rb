class PagesController < ApplicationController
  
  def index
  end

  def summary
  end

  def core
  end

  def services
  end

  def consulting
  end

  def investment
  end

  def contact
    @contact = Contact.new
  end

  def contacts
    if params[:contact]
      @contact = Contact.new(params[:contact])
      respond_to do |format|
        if @contact.save
          flash[:notice] = "We've received your message, #{params[:contact][:name]}. Thank you!"
          ContactMailer.thank_you_email(@contact).deliver
          NotifyMailer.notify_email(@contact).deliver
          format.html { redirect_to '/' }
          format.json { render json: @contact, status: :created, location: @contact }
        else
          format.html { render action: "contact" }
          format.json { render json: @contact.errors, status: :unprocessable_entity }
        end
      end
    else
      @contacts = Contact.all
      respond_to do |format|
        format.html { }
        format.json { render json: @contacts }
      end
    end
  end

end
