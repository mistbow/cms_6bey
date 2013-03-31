class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params[:admin])
    if @admin.save
      session[:admin_id] = @admin.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
end
