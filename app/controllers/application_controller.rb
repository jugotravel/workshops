class ApplicationController < ActionController::Base

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  #protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:firstname,:lastname, :email, :password, :password_confirmation) }
   end
  
end


#class ApplicationController < ActionController::Base
#  before_action :configure_permitted_parameters, if: :devise_controller?

#  protected

#  def configure_permitted_parameters
#    devise_parameter_sanitizer.for(:sign_up) << :username
#  end
#end