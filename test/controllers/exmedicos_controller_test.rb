require 'test_helper'

class ExmedicosControllerTest < ActionController::TestCase
  setup do
    @exmedico = exmedicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exmedicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exmedico" do
    assert_difference('Exmedico.count') do
      post :create, exmedico: { exam_id: @exmedico.exam_id, medAF018: @exmedico.medAF018, medAF01: @exmedico.medAF01, medAF02: @exmedico.medAF02, medAF03: @exmedico.medAF03, medAF04: @exmedico.medAF04, medAF05: @exmedico.medAF05, medAF06: @exmedico.medAF06, medAF07: @exmedico.medAF07, medAF08: @exmedico.medAF08, medAF09: @exmedico.medAF09, medAF10: @exmedico.medAF10, medAF11: @exmedico.medAF11, medAF12: @exmedico.medAF12, medAF13: @exmedico.medAF13, medAF14: @exmedico.medAF14, medAF15: @exmedico.medAF15, medAF16: @exmedico.medAF16, medAF17: @exmedico.medAF17, medAP018: @exmedico.medAP018, medAP01: @exmedico.medAP01, medAP02: @exmedico.medAP02, medAP03: @exmedico.medAP03, medAP04: @exmedico.medAP04, medAP05: @exmedico.medAP05, medAP06: @exmedico.medAP06, medAP07: @exmedico.medAP07, medAP08: @exmedico.medAP08, medAP09: @exmedico.medAP09, medAP10: @exmedico.medAP10, medAP11: @exmedico.medAP11, medAP12: @exmedico.medAP12, medAP13: @exmedico.medAP13, medAP14: @exmedico.medAP14, medAP15: @exmedico.medAP15, medAP16: @exmedico.medAP16, medAP17: @exmedico.medAP17, medq01: @exmedico.medq01, medq02: @exmedico.medq02, medq03: @exmedico.medq03, medq04: @exmedico.medq04, medq05: @exmedico.medq05, medq06: @exmedico.medq06, medq07: @exmedico.medq07, medq08: @exmedico.medq08, medq09: @exmedico.medq09, medq10: @exmedico.medq10, medq11: @exmedico.medq11, medq12: @exmedico.medq12, medq13: @exmedico.medq13, medq14: @exmedico.medq14, medq15: @exmedico.medq15, medq16: @exmedico.medq16, medq17: @exmedico.medq17, medq18: @exmedico.medq18, medq19: @exmedico.medq19, medq20: @exmedico.medq20, medq21: @exmedico.medq21, medq22: @exmedico.medq22, medq23: @exmedico.medq23, medq24: @exmedico.medq24, medq25: @exmedico.medq25, medq26: @exmedico.medq26, medq27: @exmedico.medq27, medq28: @exmedico.medq28, medq29: @exmedico.medq29, medq30: @exmedico.medq30, medq31: @exmedico.medq31, medq32: @exmedico.medq32, medq33: @exmedico.medq33, medq34: @exmedico.medq34, medq35: @exmedico.medq35 }
    end

    assert_redirected_to exmedico_path(assigns(:exmedico))
  end

  test "should show exmedico" do
    get :show, id: @exmedico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exmedico
    assert_response :success
  end

  test "should update exmedico" do
    patch :update, id: @exmedico, exmedico: { exam_id: @exmedico.exam_id, medAF018: @exmedico.medAF018, medAF01: @exmedico.medAF01, medAF02: @exmedico.medAF02, medAF03: @exmedico.medAF03, medAF04: @exmedico.medAF04, medAF05: @exmedico.medAF05, medAF06: @exmedico.medAF06, medAF07: @exmedico.medAF07, medAF08: @exmedico.medAF08, medAF09: @exmedico.medAF09, medAF10: @exmedico.medAF10, medAF11: @exmedico.medAF11, medAF12: @exmedico.medAF12, medAF13: @exmedico.medAF13, medAF14: @exmedico.medAF14, medAF15: @exmedico.medAF15, medAF16: @exmedico.medAF16, medAF17: @exmedico.medAF17, medAP018: @exmedico.medAP018, medAP01: @exmedico.medAP01, medAP02: @exmedico.medAP02, medAP03: @exmedico.medAP03, medAP04: @exmedico.medAP04, medAP05: @exmedico.medAP05, medAP06: @exmedico.medAP06, medAP07: @exmedico.medAP07, medAP08: @exmedico.medAP08, medAP09: @exmedico.medAP09, medAP10: @exmedico.medAP10, medAP11: @exmedico.medAP11, medAP12: @exmedico.medAP12, medAP13: @exmedico.medAP13, medAP14: @exmedico.medAP14, medAP15: @exmedico.medAP15, medAP16: @exmedico.medAP16, medAP17: @exmedico.medAP17, medq01: @exmedico.medq01, medq02: @exmedico.medq02, medq03: @exmedico.medq03, medq04: @exmedico.medq04, medq05: @exmedico.medq05, medq06: @exmedico.medq06, medq07: @exmedico.medq07, medq08: @exmedico.medq08, medq09: @exmedico.medq09, medq10: @exmedico.medq10, medq11: @exmedico.medq11, medq12: @exmedico.medq12, medq13: @exmedico.medq13, medq14: @exmedico.medq14, medq15: @exmedico.medq15, medq16: @exmedico.medq16, medq17: @exmedico.medq17, medq18: @exmedico.medq18, medq19: @exmedico.medq19, medq20: @exmedico.medq20, medq21: @exmedico.medq21, medq22: @exmedico.medq22, medq23: @exmedico.medq23, medq24: @exmedico.medq24, medq25: @exmedico.medq25, medq26: @exmedico.medq26, medq27: @exmedico.medq27, medq28: @exmedico.medq28, medq29: @exmedico.medq29, medq30: @exmedico.medq30, medq31: @exmedico.medq31, medq32: @exmedico.medq32, medq33: @exmedico.medq33, medq34: @exmedico.medq34, medq35: @exmedico.medq35 }
    assert_redirected_to exmedico_path(assigns(:exmedico))
  end

  test "should destroy exmedico" do
    assert_difference('Exmedico.count', -1) do
      delete :destroy, id: @exmedico
    end

    assert_redirected_to exmedicos_path
  end
end
