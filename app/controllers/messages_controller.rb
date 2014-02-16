require "twilio-ruby"

class MessagesController < ApplicationController
    # your Twilio authentication credentials
  ACCOUNT_SID = 'AC23770018315f8f558556ce2c1062df4a'
  ACCOUNT_TOKEN = '1d424487e777f009f98b6b196df2b871'

# base URL of this application
  BASE_URL = "http://localhost:3000"

# Outgoing Caller ID you have previously validated with Twilio
  CALLER_ID = '6465911479'

  def new
    @user = User.new
    @patient = Patient.new
    @condition = @patient.conditions.build
    @message = Message.new
    @phone_number = Patient.find_by_id(params[:patient_id]).phone
  end

  def create
    @patient_id = params[:patient_id]
    @user_id = params[:user_id]
    @message = current_user.messages.build(params[:message])
    # debugger
    if @message.save
       #parameters sent to Twilio REST API

      data = {
        :from => CALLER_ID,
        :to => '+16465911479',
        # :url => BASE_URL + '/reminder',
        :body => "Hello there"
      }



       begin
        client = Twilio::REST::Client.new(ACCOUNT_SID, ACCOUNT_TOKEN)
        # client.account.messages.sendMessage data
        # client.account.calls.create data
        client.account.sms.messages.create(
          from: '6465911479',
          to: '+9175175848',
          body: "It is Roberto."
        )
      rescue StandardError => bang
        redirect_to :action => 'new', 'msg' => "Error #{bang}"
        return
      end
    else
      render 'new'
    end

  end

  def reminder

  end
end
