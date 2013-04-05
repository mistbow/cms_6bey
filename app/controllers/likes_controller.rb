class LikesController < ApplicationController

  def create
    target = Likeable.find_by_resource_id(params[:resource_name], params[:resource_id])
    current_user.like!(target)
    redirect_to :back, :notice => 'success'
  end

  def destroy
    target = Likeable.find_by_resource_id(params[:resource_name], params[:resource_id])
    current_user.unlike!(target)
    redirect_to :back, :notice => 'success'
  end
end
