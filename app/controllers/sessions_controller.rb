# encoding: utf-8
class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to root_url, notice:"登录成功！"
  	else
  		redirect_to new_session_path
  		flash[:notice] = "帐号或密码错误！"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to new_session_path
  	flash[:notice] = "你已经退出登录！"
  end
end
