class ApplicationController < ActionController::Base
  protect_from_forgery
  force_ssl
  private

  def current_user
  	@current_user ||= User.find(session[:user_if]) if session[:user_id]
  end

  gelper_method :current_users
end
