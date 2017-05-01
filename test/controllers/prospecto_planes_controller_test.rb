require 'test_helper'

class ProspectoPlanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospecto_plan = prospecto_planes(:one)
  end

  test "should get index" do
    get prospecto_planes_url
    assert_response :success
  end

  test "should get new" do
    get new_prospecto_plan_url
    assert_response :success
  end

  test "should create prospecto_plan" do
    assert_difference('ProspectoPlan.count') do
      post prospecto_planes_url, params: { prospecto_plan: { Plan_id: @prospecto_plan.Plan_id, Prospecto_id: @prospecto_plan.Prospecto_id, Usuario_id: @prospecto_plan.Usuario_id, estatus: @prospecto_plan.estatus } }
    end

    assert_redirected_to prospecto_plan_url(ProspectoPlan.last)
  end

  test "should show prospecto_plan" do
    get prospecto_plan_url(@prospecto_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospecto_plan_url(@prospecto_plan)
    assert_response :success
  end

  test "should update prospecto_plan" do
    patch prospecto_plan_url(@prospecto_plan), params: { prospecto_plan: { Plan_id: @prospecto_plan.Plan_id, Prospecto_id: @prospecto_plan.Prospecto_id, Usuario_id: @prospecto_plan.Usuario_id, estatus: @prospecto_plan.estatus } }
    assert_redirected_to prospecto_plan_url(@prospecto_plan)
  end

  test "should destroy prospecto_plan" do
    assert_difference('ProspectoPlan.count', -1) do
      delete prospecto_plan_url(@prospecto_plan)
    end

    assert_redirected_to prospecto_planes_url
  end
end
