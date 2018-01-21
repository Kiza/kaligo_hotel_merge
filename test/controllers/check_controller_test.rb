require 'test_helper'

class CheckControllerTest < ActionDispatch::IntegrationTest
  test "should get live" do
    get check_live_url
    assert_response :success
  end

  test "should get health" do
    get check_health_url
    assert_response :success
  end

end
