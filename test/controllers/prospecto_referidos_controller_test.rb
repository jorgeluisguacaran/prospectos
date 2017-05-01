require 'test_helper'

class ProspectoReferidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospecto_referido = prospecto_referidos(:one)
  end

  test "should get index" do
    get prospecto_referidos_url
    assert_response :success
  end

  test "should get new" do
    get new_prospecto_referido_url
    assert_response :success
  end

  test "should create prospecto_referido" do
    assert_difference('ProspectoReferido.count') do
      post prospecto_referidos_url, params: { prospecto_referido: { Prospecto_id: @prospecto_referido.Prospecto_id, nombre_referido: @prospecto_referido.nombre_referido, ocupacion_referido: @prospecto_referido.ocupacion_referido, telefono_referido: @prospecto_referido.telefono_referido } }
    end

    assert_redirected_to prospecto_referido_url(ProspectoReferido.last)
  end

  test "should show prospecto_referido" do
    get prospecto_referido_url(@prospecto_referido)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospecto_referido_url(@prospecto_referido)
    assert_response :success
  end

  test "should update prospecto_referido" do
    patch prospecto_referido_url(@prospecto_referido), params: { prospecto_referido: { Prospecto_id: @prospecto_referido.Prospecto_id, nombre_referido: @prospecto_referido.nombre_referido, ocupacion_referido: @prospecto_referido.ocupacion_referido, telefono_referido: @prospecto_referido.telefono_referido } }
    assert_redirected_to prospecto_referido_url(@prospecto_referido)
  end

  test "should destroy prospecto_referido" do
    assert_difference('ProspectoReferido.count', -1) do
      delete prospecto_referido_url(@prospecto_referido)
    end

    assert_redirected_to prospecto_referidos_url
  end
end
