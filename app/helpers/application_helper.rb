module ApplicationHelper
  def is_admin?
    return false unless user_signed_in?
    return true if current_user.role == 3
  end
end
