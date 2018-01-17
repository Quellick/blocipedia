class DowngradeController < ApplicationController
  def new
  end

  def create
    @wikis = current_user.wikis
    
    @wikis.unscoped.update_all(private: 'false')
    current_user.update_attribute(:role, 0)

    flash[:notice] = "You have successfully downgraded your account, and all of your private wikis have been made public."

    redirect_to root_path
  end
end
