class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :save_return
  # private
  # def current_admin
    # @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
  # end
  # helper_method :current_admin
  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  #helper_method :current_user
  def save_return
    session[:return_to] = request.referer
  end
  protected
  def authenticate_with_user
    redirect_to new_session_path unless session[:user_id]
  end
end
