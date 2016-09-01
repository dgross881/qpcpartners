module PhrasingHelper
  def phrase(key, options = {}, *args)
    key = key.to_s
    if can_edit_phrases?
      @record = PhrasingPhrase.where(key: key, locale: I18n.locale.to_s).first || PhrasingPhrase.create_phrase(key)
      inline(@record, :value, options)
    else
      t(key, *args).html_safe
    end
  end

  def can_edit_phrases?
    current_user.has_role?("superadmin") if current_user.present?
  end
end
