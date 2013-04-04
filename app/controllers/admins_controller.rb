class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params[:admin])
    if @admin.save
      session[:admin_id] = @admin.id
      redirect_to rails_admin_path
    else
      render "new"
    end
  end
end
