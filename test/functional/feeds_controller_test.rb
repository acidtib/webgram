require 'test_helper'

class FeedsControllerTest < ActionController::TestCase
  test "should get get_feeds" do
    get :get_feeds
    assert_response :success
  end

end
