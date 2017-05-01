require 'test_helper'

class TipoCorreosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_correo = tipo_correos(:one)
  end

  test "should get index" do
    get tipo_correos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_correo_url
    assert_response :success
  end

  test "should create tipo_correo" do
    assert_difference('TipoCorreo.count') do
      post tipo_correos_url, params: { tipo_correo: { descripcion: @tipo_correo.descripcion, estatus: @tipo_correo.estatus } }
    end

    assert_redirected_to tipo_correo_url(TipoCorreo.last)
  end

  test "should show tipo_correo" do
    get tipo_correo_url(@tipo_correo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_correo_url(@tipo_correo)
    assert_response :success
  end

  test "should update tipo_correo" do
    patch tipo_correo_url(@tipo_correo), params: { tipo_correo: { descripcion: @tipo_correo.descripcion, estatus: @tipo_correo.estatus } }
    assert_redirected_to tipo_correo_url(@tipo_correo)
  end

  test "should destroy tipo_correo" do
    assert_difference('TipoCorreo.count', -1) do
      delete tipo_correo_url(@tipo_correo)
    end

    assert_redirected_to tipo_correos_url
  end
end
