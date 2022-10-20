require "test_helper"

class User::PropertiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_properties_index_url
    assert_response :success
  end

  test "should get show" do
    get user_properties_show_url
    assert_response :success
  end
end
