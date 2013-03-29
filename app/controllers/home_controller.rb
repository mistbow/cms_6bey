class HomeController < ApplicationController
  def index
  	@deals = Deal.order("id desc").paginate(:page => params[:page], :per_page => 24) 
  end
end
