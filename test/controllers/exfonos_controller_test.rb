require 'test_helper'

class ExfonosControllerTest < ActionController::TestCase
  setup do
    @exfono = exfonos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exfonos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exfono" do
    assert_difference('Exfono.count') do
      post :create, exfono: { exam_id: @exfono.exam_id, fonq01: @exfono.fonq01, fonq02: @exfono.fonq02, fonq03: @exfono.fonq03, fonq04: @exfono.fonq04, fonq05: @exfono.fonq05, fonq06: @exfono.fonq06, fonq07: @exfono.fonq07, fonq08: @exfono.fonq08, fonq09: @exfono.fonq09, fonq10: @exfono.fonq10, fonq11: @exfono.fonq11, fonq12: @exfono.fonq12, fonq13: @exfono.fonq13, fonq14: @exfono.fonq14, fonq15: @exfono.fonq15, fonq16: @exfono.fonq16, fonq17: @exfono.fonq17, status: @exfono.status }
    end

    assert_redirected_to exfono_path(assigns(:exfono))
  end

  test "should show exfono" do
    get :show, id: @exfono
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exfono
    assert_response :success
  end

  test "should update exfono" do
    patch :update, id: @exfono, exfono: { exam_id: @exfono.exam_id, fonq01: @exfono.fonq01, fonq02: @exfono.fonq02, fonq03: @exfono.fonq03, fonq04: @exfono.fonq04, fonq05: @exfono.fonq05, fonq06: @exfono.fonq06, fonq07: @exfono.fonq07, fonq08: @exfono.fonq08, fonq09: @exfono.fonq09, fonq10: @exfono.fonq10, fonq11: @exfono.fonq11, fonq12: @exfono.fonq12, fonq13: @exfono.fonq13, fonq14: @exfono.fonq14, fonq15: @exfono.fonq15, fonq16: @exfono.fonq16, fonq17: @exfono.fonq17, status: @exfono.status }
    assert_redirected_to exfono_path(assigns(:exfono))
  end

  test "should destroy exfono" do
    assert_difference('Exfono.count', -1) do
      delete :destroy, id: @exfono
    end

    assert_redirected_to exfonos_path
  end
end
