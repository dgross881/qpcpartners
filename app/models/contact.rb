class Contact < ActiveRecord::Base
  attr_accessible :company, :email, :message, :name, :phone, :website
end
