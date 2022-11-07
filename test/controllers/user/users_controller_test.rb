require "test_helper"

class User::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_users_new_url
    assert_response :success
  end

  test "should get index" do
    get user_users_index_url
    assert_response :success
  end

  test "should get show" do
    get user_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_users_edit_url
    assert_response :success
  end

  test "should get favorite" do
    get user_users_favorite_url
    assert_response :success
  end
end
