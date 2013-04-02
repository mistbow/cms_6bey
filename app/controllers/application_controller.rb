class ApplicationController < ActionController::Base
  protect_from_forgery
  # private
  # def current_admin
    # @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
  # end
  # helper_method :current_admin


  protected
  def authenticate_with_user
  	  redirect_to new_session_path unless session[:user_id]
  end
end
