require 'test_helper'

class ProspectoOcupacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospecto_ocupacion = prospecto_ocupaciones(:one)
  end

  test "should get index" do
    get prospecto_ocupaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_prospecto_ocupacion_url
    assert_response :success
  end

  test "should create prospecto_ocupacion" do
    assert_difference('ProspectoOcupacion.count') do
      post prospecto_ocupaciones_url, params: { prospecto_ocupacion: { Prospecto_id: @prospecto_ocupacion.Prospecto_id, estatus: @prospecto_ocupacion.estatus, ocupacion: @prospecto_ocupacion.ocupacion } }
    end

    assert_redirected_to prospecto_ocupacion_url(ProspectoOcupacion.last)
  end

  test "should show prospecto_ocupacion" do
    get prospecto_ocupacion_url(@prospecto_ocupacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospecto_ocupacion_url(@prospecto_ocupacion)
    assert_response :success
  end

  test "should update prospecto_ocupacion" do
    patch prospecto_ocupacion_url(@prospecto_ocupacion), params: { prospecto_ocupacion: { Prospecto_id: @prospecto_ocupacion.Prospecto_id, estatus: @prospecto_ocupacion.estatus, ocupacion: @prospecto_ocupacion.ocupacion } }
    assert_redirected_to prospecto_ocupacion_url(@prospecto_ocupacion)
  end

  test "should destroy prospecto_ocupacion" do
    assert_difference('ProspectoOcupacion.count', -1) do
      delete prospecto_ocupacion_url(@prospecto_ocupacion)
    end

    assert_redirected_to prospecto_ocupaciones_url
  end
end
