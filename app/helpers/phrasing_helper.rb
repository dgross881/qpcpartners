module PhrasingHelper
  def can_edit_phrases?
    current_user.has_role?("superadmin") if current_user.present?
  end
end
