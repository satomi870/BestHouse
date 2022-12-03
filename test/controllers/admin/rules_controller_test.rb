require "test_helper"

class Admin::RulesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_rules_index_url
    assert_response :success
  end
end
