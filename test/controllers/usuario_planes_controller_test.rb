require 'test_helper'

class UsuarioPlanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_plan = usuario_planes(:one)
  end

  test "should get index" do
    get usuario_planes_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_plan_url
    assert_response :success
  end

  test "should create usuario_plan" do
    assert_difference('UsuarioPlan.count') do
      post usuario_planes_url, params: { usuario_plan: { Plan_id: @usuario_plan.Plan_id, Usuario_id: @usuario_plan.Usuario_id, estatus: @usuario_plan.estatus, fecha_asignacion: @usuario_plan.fecha_asignacion, nro_personas: @usuario_plan.nro_personas } }
    end

    assert_redirected_to usuario_plan_url(UsuarioPlan.last)
  end

  test "should show usuario_plan" do
    get usuario_plan_url(@usuario_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_plan_url(@usuario_plan)
    assert_response :success
  end

  test "should update usuario_plan" do
    patch usuario_plan_url(@usuario_plan), params: { usuario_plan: { Plan_id: @usuario_plan.Plan_id, Usuario_id: @usuario_plan.Usuario_id, estatus: @usuario_plan.estatus, fecha_asignacion: @usuario_plan.fecha_asignacion, nro_personas: @usuario_plan.nro_personas } }
    assert_redirected_to usuario_plan_url(@usuario_plan)
  end

  test "should destroy usuario_plan" do
    assert_difference('UsuarioPlan.count', -1) do
      delete usuario_plan_url(@usuario_plan)
    end

    assert_redirected_to usuario_planes_url
  end
end
