require 'test_helper'

class ExpsicosControllerTest < ActionController::TestCase
  setup do
    @expsico = expsicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expsicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expsico" do
    assert_difference('Expsico.count') do
      post :create, expsico: { exam_id: @expsico.exam_id, psiq01: @expsico.psiq01, psiq02: @expsico.psiq02, psiq03: @expsico.psiq03, psiq04: @expsico.psiq04, psiq05: @expsico.psiq05, psiq06: @expsico.psiq06, psiq07: @expsico.psiq07, psiq08: @expsico.psiq08, psiq09: @expsico.psiq09, psiq10: @expsico.psiq10, psiq11: @expsico.psiq11, psiq12: @expsico.psiq12, psiq13: @expsico.psiq13, psiq14: @expsico.psiq14, psiq15: @expsico.psiq15, psiq16: @expsico.psiq16, psiq17: @expsico.psiq17, psiq18: @expsico.psiq18, psiq19: @expsico.psiq19, psiq20: @expsico.psiq20, psiq21: @expsico.psiq21, status: @expsico.status }
    end

    assert_redirected_to expsico_path(assigns(:expsico))
  end

  test "should show expsico" do
    get :show, id: @expsico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expsico
    assert_response :success
  end

  test "should update expsico" do
    patch :update, id: @expsico, expsico: { exam_id: @expsico.exam_id, psiq01: @expsico.psiq01, psiq02: @expsico.psiq02, psiq03: @expsico.psiq03, psiq04: @expsico.psiq04, psiq05: @expsico.psiq05, psiq06: @expsico.psiq06, psiq07: @expsico.psiq07, psiq08: @expsico.psiq08, psiq09: @expsico.psiq09, psiq10: @expsico.psiq10, psiq11: @expsico.psiq11, psiq12: @expsico.psiq12, psiq13: @expsico.psiq13, psiq14: @expsico.psiq14, psiq15: @expsico.psiq15, psiq16: @expsico.psiq16, psiq17: @expsico.psiq17, psiq18: @expsico.psiq18, psiq19: @expsico.psiq19, psiq20: @expsico.psiq20, psiq21: @expsico.psiq21, status: @expsico.status }
    assert_redirected_to expsico_path(assigns(:expsico))
  end

  test "should destroy expsico" do
    assert_difference('Expsico.count', -1) do
      delete :destroy, id: @expsico
    end

    assert_redirected_to expsicos_path
  end
end
