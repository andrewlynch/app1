class ConnectController < ApplicationController
   before_filter :authenticate_user!
  def sms_reciev
  @click1 = "This is the click funtion"
  end

  def sms_send
  @new1 = "This is the sms function"
  end

def test
 

 @testa1 = "hit hre"
end

end
