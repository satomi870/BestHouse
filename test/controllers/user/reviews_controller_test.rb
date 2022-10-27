require "test_helper"

class User::ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_reviews_new_url
    assert_response :success
  end

  test "should get index" do
    get user_reviews_index_url
    assert_response :success
  end

  test "should get show" do
    get user_reviews_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_reviews_edit_url
    assert_response :success
  end
end
