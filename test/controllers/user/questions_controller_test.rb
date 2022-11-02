require "test_helper"

class User::QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_questions_new_url
    assert_response :success
  end

  test "should get index" do
    get user_questions_index_url
    assert_response :success
  end

  test "should get show" do
    get user_questions_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_questions_edit_url
    assert_response :success
  end
end
