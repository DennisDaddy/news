require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get About" do
    get pages_About_url
    assert_response :success
  end

  test "should get News" do
    get pages_News_url
    assert_response :success
  end

  test "should get Entertainment" do
    get pages_Entertainment_url
    assert_response :success
  end

end
