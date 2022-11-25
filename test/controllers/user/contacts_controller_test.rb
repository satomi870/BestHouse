require "test_helper"

class User::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_contacts_new_url
    assert_response :success
  end
end
