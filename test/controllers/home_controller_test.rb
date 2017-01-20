require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get caballos" do
    get :caballos
    assert_response :success
  end

  test "should get clientes" do
    get :clientes
    assert_response :success
  end

  test "should get usuarios" do
    get :usuarios
    assert_response :success
  end

end
