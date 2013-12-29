require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  test "should get accommodation" do
    get :accommodation
    assert_response :success
  end

  test "should get chooseus" do
    get :chooseus
    assert_response :success
  end

  test "should get community" do
    get :community
    assert_response :success
  end

  test "should get resources" do
    get :resources
    assert_response :success
  end

end
