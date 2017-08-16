require 'test_helper'

class CatedraticosControllerTest < ActionController::TestCase
  setup do
    @catedratico = catedraticos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catedraticos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catedratico" do
    assert_difference('Catedratico.count') do
      post :create, catedratico: { Catedratico: @catedratico.Catedratico, Edad: @catedratico.Edad, FechaIngreso: @catedratico.FechaIngreso }
    end

    assert_redirected_to catedratico_path(assigns(:catedratico))
  end

  test "should show catedratico" do
    get :show, id: @catedratico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catedratico
    assert_response :success
  end

  test "should update catedratico" do
    patch :update, id: @catedratico, catedratico: { Catedratico: @catedratico.Catedratico, Edad: @catedratico.Edad, FechaIngreso: @catedratico.FechaIngreso }
    assert_redirected_to catedratico_path(assigns(:catedratico))
  end

  test "should destroy catedratico" do
    assert_difference('Catedratico.count', -1) do
      delete :destroy, id: @catedratico
    end

    assert_redirected_to catedraticos_path
  end
end
