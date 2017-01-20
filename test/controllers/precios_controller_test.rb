require 'test_helper'

class PreciosControllerTest < ActionController::TestCase
  setup do
    @precio = precios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:precios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create precio" do
    assert_difference('Precio.count') do
      post :create, precio: { caballo_id: @precio.caballo_id, cliente_id: @precio.cliente_id, importe: @precio.importe, moneda: @precio.moneda, tipo: @precio.tipo }
    end

    assert_redirected_to precio_path(assigns(:precio))
  end

  test "should show precio" do
    get :show, id: @precio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @precio
    assert_response :success
  end

  test "should update precio" do
    patch :update, id: @precio, precio: { caballo_id: @precio.caballo_id, cliente_id: @precio.cliente_id, importe: @precio.importe, moneda: @precio.moneda, tipo: @precio.tipo }
    assert_redirected_to precio_path(assigns(:precio))
  end

  test "should destroy precio" do
    assert_difference('Precio.count', -1) do
      delete :destroy, id: @precio
    end

    assert_redirected_to precios_path
  end
end
