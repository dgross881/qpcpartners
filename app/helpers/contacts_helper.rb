module ContactsHelper

	def value_for(model, field)
		flash[model] ? flash[model][field] : nil
	end

end
