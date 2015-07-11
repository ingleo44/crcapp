require 'test_helper'

class AntPatologicosControllerTest < ActionController::TestCase
  setup do
    @ant_patologico = ant_patologicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ant_patologicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ant_patologico" do
    assert_difference('AntPatologico.count') do
      post :create, ant_patologico: { name: @ant_patologico.name }
    end

    assert_redirected_to ant_patologico_path(assigns(:ant_patologico))
  end

  test "should show ant_patologico" do
    get :show, id: @ant_patologico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ant_patologico
    assert_response :success
  end

  test "should update ant_patologico" do
    patch :update, id: @ant_patologico, ant_patologico: { name: @ant_patologico.name }
    assert_redirected_to ant_patologico_path(assigns(:ant_patologico))
  end

  test "should destroy ant_patologico" do
    assert_difference('AntPatologico.count', -1) do
      delete :destroy, id: @ant_patologico
    end

    assert_redirected_to ant_patologicos_path
  end
end
