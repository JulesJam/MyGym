require 'test_helper'

class SecureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get secure_index_url
    assert_response :success
  end

  test "should get login_data" do
    get secure_login_data_url
    assert_response :success
  end

end
