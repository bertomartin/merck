class MessagesController < ApplicationController
  def new
    @user = User.new
    @patient = Patient.new
    @condition = @patient.conditions.build
    @message = Message.new
  end

  def create

    @message = current_user.messages.build(params[:message])
    # @message = Message.new(params[:message])
  end
end
