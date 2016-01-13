class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    @user.level = current_user.level
    if @user.level == 2
    	new_pro_path
	else
		root_path
	end

  end

end