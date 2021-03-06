class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit

  rescue_from Pundit::NotAuthorizedError do |exception|
  	redirect_to user_session_path, alert: exception.message
  end

  protect_from_forgery with: :exception

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    user_session_path
  end

  before_filter :authenticate_user!
end