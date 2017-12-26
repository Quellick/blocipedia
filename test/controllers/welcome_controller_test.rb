require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get contact" do
    get welcome_contact_url
    assert_response :success
  end

  test "should get signin" do
    get welcome_signin_url
    assert_response :success
  end

  test "should get signup" do
    get welcome_signup_url
    assert_response :success
  end

end
