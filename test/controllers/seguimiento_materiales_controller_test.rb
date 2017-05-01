require 'test_helper'

class SeguimientoMaterialesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seguimiento_material = seguimiento_materiales(:one)
  end

  test "should get index" do
    get seguimiento_materiales_url
    assert_response :success
  end

  test "should get new" do
    get new_seguimiento_material_url
    assert_response :success
  end

  test "should create seguimiento_material" do
    assert_difference('SeguimientoMaterial.count') do
      post seguimiento_materiales_url, params: { seguimiento_material: { descripcion: @seguimiento_material.descripcion, estatus: @seguimiento_material.estatus } }
    end

    assert_redirected_to seguimiento_material_url(SeguimientoMaterial.last)
  end

  test "should show seguimiento_material" do
    get seguimiento_material_url(@seguimiento_material)
    assert_response :success
  end

  test "should get edit" do
    get edit_seguimiento_material_url(@seguimiento_material)
    assert_response :success
  end

  test "should update seguimiento_material" do
    patch seguimiento_material_url(@seguimiento_material), params: { seguimiento_material: { descripcion: @seguimiento_material.descripcion, estatus: @seguimiento_material.estatus } }
    assert_redirected_to seguimiento_material_url(@seguimiento_material)
  end

  test "should destroy seguimiento_material" do
    assert_difference('SeguimientoMaterial.count', -1) do
      delete seguimiento_material_url(@seguimiento_material)
    end

    assert_redirected_to seguimiento_materiales_url
  end
end
