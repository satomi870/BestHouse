require "test_helper"

class User::RuleControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_rule_new_url
    assert_response :success
  end

  test "should get indez" do
    get user_rule_indez_url
    assert_response :success
  end
end
