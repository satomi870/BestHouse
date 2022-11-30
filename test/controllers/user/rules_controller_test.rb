require "test_helper"

class User::RulesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_rules_new_url
    assert_response :success
  end

  test "should get index" do
    get user_rules_index_url
    assert_response :success
  end
end
