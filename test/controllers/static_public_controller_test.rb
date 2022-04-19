require "test_helper"

class StaticPublicControllerTest < ActionDispatch::IntegrationTest
  test "should get landing_page" do
    get static_public_landing_page_url
    assert_response :success
  end

  test "should get privacy" do
    get static_public_privacy_url
    assert_response :success
  end

  test "should get terms" do
    get static_public_terms_url
    assert_response :success
  end
end
