require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get scene_1" do
    get home_scene_1_url
    assert_response :success
  end
end
