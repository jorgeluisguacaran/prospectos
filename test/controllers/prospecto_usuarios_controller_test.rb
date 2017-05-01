require 'test_helper'

class ProspectoUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospecto_usuario = prospecto_usuarios(:one)
  end

  test "should get index" do
    get prospecto_usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_prospecto_usuario_url
    assert_response :success
  end

  test "should create prospecto_usuario" do
    assert_difference('ProspectoUsuario.count') do
      post prospecto_usuarios_url, params: { prospecto_usuario: { Prospecto_id: @prospecto_usuario.Prospecto_id, Usuario_id: @prospecto_usuario.Usuario_id, estatus: @prospecto_usuario.estatus } }
    end

    assert_redirected_to prospecto_usuario_url(ProspectoUsuario.last)
  end

  test "should show prospecto_usuario" do
    get prospecto_usuario_url(@prospecto_usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospecto_usuario_url(@prospecto_usuario)
    assert_response :success
  end

  test "should update prospecto_usuario" do
    patch prospecto_usuario_url(@prospecto_usuario), params: { prospecto_usuario: { Prospecto_id: @prospecto_usuario.Prospecto_id, Usuario_id: @prospecto_usuario.Usuario_id, estatus: @prospecto_usuario.estatus } }
    assert_redirected_to prospecto_usuario_url(@prospecto_usuario)
  end

  test "should destroy prospecto_usuario" do
    assert_difference('ProspectoUsuario.count', -1) do
      delete prospecto_usuario_url(@prospecto_usuario)
    end

    assert_redirected_to prospecto_usuarios_url
  end
end
