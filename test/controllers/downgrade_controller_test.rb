require 'test_helper'

class DowngradeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get downgrade_new_url
    assert_response :success
  end

  test "should get create" do
    get downgrade_create_url
    assert_response :success
  end

end
