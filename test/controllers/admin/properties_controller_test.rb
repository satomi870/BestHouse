require "test_helper"

class Admin::PropertiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_properties_index_url
    assert_response :success
  end
end
