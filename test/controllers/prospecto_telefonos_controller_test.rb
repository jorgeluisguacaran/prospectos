require 'test_helper'

class ProspectoTelefonosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospecto_telefono = prospecto_telefonos(:one)
  end

  test "should get index" do
    get prospecto_telefonos_url
    assert_response :success
  end

  test "should get new" do
    get new_prospecto_telefono_url
    assert_response :success
  end

  test "should create prospecto_telefono" do
    assert_difference('ProspectoTelefono.count') do
      post prospecto_telefonos_url, params: { prospecto_telefono: { Prospecto_id: @prospecto_telefono.Prospecto_id, TipoTelefono_id: @prospecto_telefono.TipoTelefono_id, estatus: @prospecto_telefono.estatus, telefono: @prospecto_telefono.telefono } }
    end

    assert_redirected_to prospecto_telefono_url(ProspectoTelefono.last)
  end

  test "should show prospecto_telefono" do
    get prospecto_telefono_url(@prospecto_telefono)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospecto_telefono_url(@prospecto_telefono)
    assert_response :success
  end

  test "should update prospecto_telefono" do
    patch prospecto_telefono_url(@prospecto_telefono), params: { prospecto_telefono: { Prospecto_id: @prospecto_telefono.Prospecto_id, TipoTelefono_id: @prospecto_telefono.TipoTelefono_id, estatus: @prospecto_telefono.estatus, telefono: @prospecto_telefono.telefono } }
    assert_redirected_to prospecto_telefono_url(@prospecto_telefono)
  end

  test "should destroy prospecto_telefono" do
    assert_difference('ProspectoTelefono.count', -1) do
      delete prospecto_telefono_url(@prospecto_telefono)
    end

    assert_redirected_to prospecto_telefonos_url
  end
end
