class User::RegistrationsController < Devise::RegistrationsController
  
  before_filter :configure_permitted_parameters
  
  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :last_name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :last_name])
    end
end