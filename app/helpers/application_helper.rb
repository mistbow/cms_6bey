module ApplicationHelper
	def current_user 
  	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def format_time(time)
    timeago_tag time, :limit => 1.weeks.ago
  end
end
