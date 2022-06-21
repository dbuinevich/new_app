class RegistrationsController < Devise::RegistrationsController
    # before_action :authenticate_user!, :redirect_unless_admin,  only: [:new, :create]
    before_action :configure_permitted_parameters, if: :devise_controller?
    # skip_before_action :require_no_authentication

    # def create
        
    # end

    private

    # def redirect_unless_admin
    #   unless current_user.admin?
    #     flash[:error] = "Only admins can do that"
    #     redirect_to root_path
    #   end
    # end
    
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_num])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone_num])
    end

    def after_sign_up_path_for(resource)
        root_path
    end

    def after_sign_in_path_for(resource)
        root_path
    end

    def after_update_path_for(resource)
        root_path
    end

end
