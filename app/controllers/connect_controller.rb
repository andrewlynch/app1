class ConnectController < ApplicationController
   before_filter :authenticate_user!

   def index
     #http://www.napt.mobi/connect/sms?api_id=12345&apiMsgId=996f364775e24b8432f45d77da8eca47&cliMsgId=abc123
     #&timestamp=1218007814&to=279995631564&from=27833001171&status=003&charge=0.300 000

     @msgid = params[:msgid]  
     @from = params[:from]
     @msg = params[:msg]    
    check_user()
    end
  
  def check_user()
  
    #check if user's mobile number is already in the users database
    if @from == "0828869024"
      @note = 'The user ', @from,' is registered '  
    else   
      reg_user()
    end
  
  end
 
  def reg_user()
    @note = "We are adding the user to the database"
  end

end
