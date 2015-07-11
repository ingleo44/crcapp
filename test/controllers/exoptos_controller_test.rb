require 'test_helper'

class ExoptosControllerTest < ActionController::TestCase
  setup do
    @exopto = exoptos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exoptos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exopto" do
    assert_difference('Exopto.count') do
      post :create, exopto: { exam_id: @exopto.exam_id, optq01: @exopto.optq01, optq02: @exopto.optq02, optq03: @exopto.optq03, optq04: @exopto.optq04, optq05: @exopto.optq05, optq06: @exopto.optq06, optq07: @exopto.optq07, optq08: @exopto.optq08, optq09: @exopto.optq09, optq10: @exopto.optq10, optq11: @exopto.optq11, optq12: @exopto.optq12, optq13: @exopto.optq13, optq14: @exopto.optq14, optq15: @exopto.optq15, optq16: @exopto.optq16, status: @exopto.status }
    end

    assert_redirected_to exopto_path(assigns(:exopto))
  end

  test "should show exopto" do
    get :show, id: @exopto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exopto
    assert_response :success
  end

  test "should update exopto" do
    patch :update, id: @exopto, exopto: { exam_id: @exopto.exam_id, optq01: @exopto.optq01, optq02: @exopto.optq02, optq03: @exopto.optq03, optq04: @exopto.optq04, optq05: @exopto.optq05, optq06: @exopto.optq06, optq07: @exopto.optq07, optq08: @exopto.optq08, optq09: @exopto.optq09, optq10: @exopto.optq10, optq11: @exopto.optq11, optq12: @exopto.optq12, optq13: @exopto.optq13, optq14: @exopto.optq14, optq15: @exopto.optq15, optq16: @exopto.optq16, status: @exopto.status }
    assert_redirected_to exopto_path(assigns(:exopto))
  end

  test "should destroy exopto" do
    assert_difference('Exopto.count', -1) do
      delete :destroy, id: @exopto
    end

    assert_redirected_to exoptos_path
  end
end
