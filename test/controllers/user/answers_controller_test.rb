require "test_helper"

class User::AnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_answers_new_url
    assert_response :success
  end

  test "should get index" do
    get user_answers_index_url
    assert_response :success
  end

  test "should get show" do
    get user_answers_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_answers_edit_url
    assert_response :success
  end
end
