# encoding: utf-8
class SessionsController < ApplicationController
  def new
  end
  
  def create_by_github
    auth = request.env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth['provider'], auth['uid']) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, notice: 'Signed in!'
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

  def admin
    admin = Admin.where(:email => params[:admin][:email]).first
    if admin.valid_password?(params[:admin][:password])
      sign_in(admin)
      redirect_to "/admin"
    else    
      redirect_to '/admins/sign_in'
    end
  end
end
