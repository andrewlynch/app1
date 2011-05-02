require 'test_helper'

class ConnectControllerTest < ActionController::TestCase
  test "should get sms" do
    get :sms
    assert_response :success
  end

end
