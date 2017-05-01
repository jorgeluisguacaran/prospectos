require 'test_helper'

class ProspectoCorreosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospecto_correo = prospecto_correos(:one)
  end

  test "should get index" do
    get prospecto_correos_url
    assert_response :success
  end

  test "should get new" do
    get new_prospecto_correo_url
    assert_response :success
  end

  test "should create prospecto_correo" do
    assert_difference('ProspectoCorreo.count') do
      post prospecto_correos_url, params: { prospecto_correo: { Prospecto_id: @prospecto_correo.Prospecto_id, TipoCorreo_id: @prospecto_correo.TipoCorreo_id, correo: @prospecto_correo.correo, estatus: @prospecto_correo.estatus } }
    end

    assert_redirected_to prospecto_correo_url(ProspectoCorreo.last)
  end

  test "should show prospecto_correo" do
    get prospecto_correo_url(@prospecto_correo)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospecto_correo_url(@prospecto_correo)
    assert_response :success
  end

  test "should update prospecto_correo" do
    patch prospecto_correo_url(@prospecto_correo), params: { prospecto_correo: { Prospecto_id: @prospecto_correo.Prospecto_id, TipoCorreo_id: @prospecto_correo.TipoCorreo_id, correo: @prospecto_correo.correo, estatus: @prospecto_correo.estatus } }
    assert_redirected_to prospecto_correo_url(@prospecto_correo)
  end

  test "should destroy prospecto_correo" do
    assert_difference('ProspectoCorreo.count', -1) do
      delete prospecto_correo_url(@prospecto_correo)
    end

    assert_redirected_to prospecto_correos_url
  end
end
