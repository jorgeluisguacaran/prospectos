require 'test_helper'

class ProspectoSeguimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospecto_seguimiento = prospecto_seguimientos(:one)
  end

  test "should get index" do
    get prospecto_seguimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_prospecto_seguimiento_url
    assert_response :success
  end

  test "should create prospecto_seguimiento" do
    assert_difference('ProspectoSeguimiento.count') do
      post prospecto_seguimientos_url, params: { prospecto_seguimiento: { PromedioHora_id: @prospecto_seguimiento.PromedioHora_id, PromedioMes_id: @prospecto_seguimiento.PromedioMes_id, Prospecto_id: @prospecto_seguimiento.Prospecto_id, aspira_salario: @prospecto_seguimiento.aspira_salario, ayuda_subir_nivel: @prospecto_seguimiento.ayuda_subir_nivel, dispuesto_a_comenzar: @prospecto_seguimiento.dispuesto_a_comenzar, escala_interes: @prospecto_seguimiento.escala_interes, estatus: @prospecto_seguimiento.estatus, fecha_proxima_reunion: @prospecto_seguimiento.fecha_proxima_reunion } }
    end

    assert_redirected_to prospecto_seguimiento_url(ProspectoSeguimiento.last)
  end

  test "should show prospecto_seguimiento" do
    get prospecto_seguimiento_url(@prospecto_seguimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospecto_seguimiento_url(@prospecto_seguimiento)
    assert_response :success
  end

  test "should update prospecto_seguimiento" do
    patch prospecto_seguimiento_url(@prospecto_seguimiento), params: { prospecto_seguimiento: { PromedioHora_id: @prospecto_seguimiento.PromedioHora_id, PromedioMes_id: @prospecto_seguimiento.PromedioMes_id, Prospecto_id: @prospecto_seguimiento.Prospecto_id, aspira_salario: @prospecto_seguimiento.aspira_salario, ayuda_subir_nivel: @prospecto_seguimiento.ayuda_subir_nivel, dispuesto_a_comenzar: @prospecto_seguimiento.dispuesto_a_comenzar, escala_interes: @prospecto_seguimiento.escala_interes, estatus: @prospecto_seguimiento.estatus, fecha_proxima_reunion: @prospecto_seguimiento.fecha_proxima_reunion } }
    assert_redirected_to prospecto_seguimiento_url(@prospecto_seguimiento)
  end

  test "should destroy prospecto_seguimiento" do
    assert_difference('ProspectoSeguimiento.count', -1) do
      delete prospecto_seguimiento_url(@prospecto_seguimiento)
    end

    assert_redirected_to prospecto_seguimientos_url
  end
end
