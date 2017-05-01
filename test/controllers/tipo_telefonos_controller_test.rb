require 'test_helper'

class TipoTelefonosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_telefono = tipo_telefonos(:one)
  end

  test "should get index" do
    get tipo_telefonos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_telefono_url
    assert_response :success
  end

  test "should create tipo_telefono" do
    assert_difference('TipoTelefono.count') do
      post tipo_telefonos_url, params: { tipo_telefono: { descripcion: @tipo_telefono.descripcion, estatus: @tipo_telefono.estatus } }
    end

    assert_redirected_to tipo_telefono_url(TipoTelefono.last)
  end

  test "should show tipo_telefono" do
    get tipo_telefono_url(@tipo_telefono)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_telefono_url(@tipo_telefono)
    assert_response :success
  end

  test "should update tipo_telefono" do
    patch tipo_telefono_url(@tipo_telefono), params: { tipo_telefono: { descripcion: @tipo_telefono.descripcion, estatus: @tipo_telefono.estatus } }
    assert_redirected_to tipo_telefono_url(@tipo_telefono)
  end

  test "should destroy tipo_telefono" do
    assert_difference('TipoTelefono.count', -1) do
      delete tipo_telefono_url(@tipo_telefono)
    end

    assert_redirected_to tipo_telefonos_url
  end
end
