require 'test_helper'

class ConnectControllerTest < ActionController::TestCase
  test "should get clickatell" do
    get :clickatell
    assert_response :success
  end

end
