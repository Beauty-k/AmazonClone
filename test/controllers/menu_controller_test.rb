require "test_helper"

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get render_partial" do
    get menu_render_partial_url
    assert_response :success
  end
end
