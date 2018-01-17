module WikisHelper
  def user_is_authorized_to_create?
    current_user && (current_user.admin? || current_user.premium?)
  end

  def user_is_authorized_to_update?
    current_user 
  end

  def user_is_authorized_to_delete?(wiki)
    current_user && (current_user == wiki.user || current_user.admin?)
  end
  
  def user_is_authorized_to_view?(wiki)
    if @wikis.private == true
      (current_user.premium? || current_user.admin?)
    else
      current_user
    end
  end
end
