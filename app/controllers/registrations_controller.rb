class RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters, if: :devise_controller?


    private
    
  
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
