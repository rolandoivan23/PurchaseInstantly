require 'test_helper'

class RetailUnitsControllerTest < ActionController::TestCase
  setup do
    @retail_unit = retail_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:retail_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retail_unit" do
    assert_difference('RetailUnit.count') do
      post :create, retail_unit: { descripcion: @retail_unit.descripcion, nombre: @retail_unit.nombre, tipo: @retail_unit.tipo }
    end

    assert_redirected_to retail_unit_path(assigns(:retail_unit))
  end

  test "should show retail_unit" do
    get :show, id: @retail_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @retail_unit
    assert_response :success
  end

  test "should update retail_unit" do
    put :update, id: @retail_unit, retail_unit: { descripcion: @retail_unit.descripcion, nombre: @retail_unit.nombre, tipo: @retail_unit.tipo }
    assert_redirected_to retail_unit_path(assigns(:retail_unit))
  end

  test "should destroy retail_unit" do
    assert_difference('RetailUnit.count', -1) do
      delete :destroy, id: @retail_unit
    end

    assert_redirected_to retail_units_path
  end
end
