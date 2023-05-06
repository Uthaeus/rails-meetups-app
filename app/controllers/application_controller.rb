class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
  end

  def current_user
    super || guest_user
  end

  def guest_user
      guest = GuestUser.new

      guest.username = "Guest"
      guest.email = "guest@example.com"
      guest 
  end
end
