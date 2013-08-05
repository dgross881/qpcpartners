module ContactsHelper

	def value_for(model, field)
		session[model] ? session[model][field] : nil
	end

end
