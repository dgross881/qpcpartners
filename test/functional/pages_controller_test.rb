require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get summary" do
    get :summary
    assert_response :success
  end

  test "should get core" do
    get :core
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get consulting" do
    get :consulting
    assert_response :success
  end

  test "should get real_estate" do
    get :real_estate
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

end
