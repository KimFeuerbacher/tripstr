require "test_helper"

class SightsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get sights_show_url
    assert_response :success
  end

  test "should get create" do
    get sights_create_url
    assert_response :success
  end
end
