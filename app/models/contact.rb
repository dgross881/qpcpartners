# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  message    :text
#  phone      :string
#  company    :string
#  website    :string
#  created_at :datetime
#  updated_at :datetime
#

class Contact < ActiveRecord::Base

end
