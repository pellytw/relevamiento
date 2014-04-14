require 'test_helper'

class NivelesControllerTest < ActionController::TestCase
  setup do
    @nivel = niveles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:niveles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nivel" do
    assert_difference('Nivel.count') do
      post :create, nivel: { nombre: @nivel.nombre }
    end

    assert_redirected_to nivel_path(assigns(:nivel))
  end

  test "should show nivel" do
    get :show, id: @nivel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nivel
    assert_response :success
  end

  test "should update nivel" do
    put :update, id: @nivel, nivel: { nombre: @nivel.nombre }
    assert_redirected_to nivel_path(assigns(:nivel))
  end

  test "should destroy nivel" do
    assert_difference('Nivel.count', -1) do
      delete :destroy, id: @nivel
    end

    assert_redirected_to niveles_path
  end
end
