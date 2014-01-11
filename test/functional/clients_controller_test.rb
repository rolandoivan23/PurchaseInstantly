require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { apellido_materno: @client.apellido_materno, apellido_paterno: @client.apellido_paterno, calle: @client.calle, ciudad_id: @client.ciudad_id, email: @client.email, estado_id: @client.estado_id, nombre: @client.nombre, numero_exterior: @client.numero_exterior, numero_interior: @client.numero_interior }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    put :update, id: @client, client: { apellido_materno: @client.apellido_materno, apellido_paterno: @client.apellido_paterno, calle: @client.calle, ciudad_id: @client.ciudad_id, email: @client.email, estado_id: @client.estado_id, nombre: @client.nombre, numero_exterior: @client.numero_exterior, numero_interior: @client.numero_interior }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
