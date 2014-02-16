class MessagesController < ApplicationController
  def new
    @user = params[:user_id]
    @patient = params[:patient_id]
    @message = Message.new
  end

  def create

    @message = current_user.messages.build(params[:message])
    # @message = Message.new(params[:message])
  end
end
