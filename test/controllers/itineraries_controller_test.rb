require "test_helper"

class ItinerariesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get itineraries_index_url
    assert_response :success
  end

  test "should get show" do
    get itineraries_show_url
    assert_response :success
  end

  test "should get edit" do
    get itineraries_edit_url
    assert_response :success
  end

  test "should get update" do
    get itineraries_update_url
    assert_response :success
  end
end
