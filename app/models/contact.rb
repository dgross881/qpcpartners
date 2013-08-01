class Contact < ActiveRecord::Base
  attr_accessible :company, :email, :message, :name, :phone, :website
  validates_uniqueness_of :email
end
