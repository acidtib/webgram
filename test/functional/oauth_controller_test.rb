require 'test_helper'

class OauthControllerTest < ActionController::TestCase
  test "should get connect" do
    get :connect
    assert_response :success
  end

  test "should get callback" do
    get :callback
    assert_response :success
  end

end
