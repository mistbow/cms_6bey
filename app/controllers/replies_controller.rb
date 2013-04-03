class RepliesController < ApplicationController

  def create
    @reply = Reply.new(params[:reply])
    @reply.save
    redirect_to "/topics/#{@reply.topic_id}", notice: 'reply was successfully created.' 
  end
end
