require 'test_helper'

class StaticsControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get statics_homepage_url
    assert_response :success
  end

  test "should get about" do
    get statics_about_url
    assert_response :success
  end

  test "should get contact_us" do
    get statics_contact_us_url
    assert_response :success
  end

end
