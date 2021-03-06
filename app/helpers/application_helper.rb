module ApplicationHelper
  def invited?
    !!session[:invitation_code]
  end

  def user_is_admin?
    if current_user
      current_user.roles.where(name: 'admin').exists?
    end
  end
end
