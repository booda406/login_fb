require 'test_helper'

class TestLoginsControllerTest < ActionController::TestCase
  setup do
    @test_login = test_logins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_logins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_login" do
    assert_difference('TestLogin.count') do
      post :create, test_login: {  }
    end

    assert_redirected_to test_login_path(assigns(:test_login))
  end

  test "should show test_login" do
    get :show, id: @test_login
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_login
    assert_response :success
  end

  test "should update test_login" do
    patch :update, id: @test_login, test_login: {  }
    assert_redirected_to test_login_path(assigns(:test_login))
  end

  test "should destroy test_login" do
    assert_difference('TestLogin.count', -1) do
      delete :destroy, id: @test_login
    end

    assert_redirected_to test_logins_path
  end
end
