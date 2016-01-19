class RegistrationsController < Devise::RegistrationsController
before_filter :configure_permitted_parameters

  def new

    # Override Devise default behaviour and create a profile as well
    build_resource({})
    resource.build_pro
    respond_with self.resource
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u|
      u.permit(:name, :email, :city, :password, :password_confirmation, :trainer, :dietician, :nutritionist, :health_coach, :career_coach, :life_coach, :stylist, :level, :pro_attributes => :last_name)
    }
  end




  def after_sign_up_path_for(resource)
    @user.level = current_user.level
    UserMailer.welcome_email(@user).deliver
    if @user.level == 2
    #	new_pro_path
    pro_path(current_user.pro.id)
	else
		root_path
	end

  end

    private



end