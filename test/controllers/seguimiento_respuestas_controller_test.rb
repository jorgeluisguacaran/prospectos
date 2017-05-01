require 'test_helper'

class SeguimientoRespuestasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seguimiento_respuesta = seguimiento_respuestas(:one)
  end

  test "should get index" do
    get seguimiento_respuestas_url
    assert_response :success
  end

  test "should get new" do
    get new_seguimiento_respuesta_url
    assert_response :success
  end

  test "should create seguimiento_respuesta" do
    assert_difference('SeguimientoRespuesta.count') do
      post seguimiento_respuestas_url, params: { seguimiento_respuesta: { descripcion: @seguimiento_respuesta.descripcion, estatus: @seguimiento_respuesta.estatus } }
    end

    assert_redirected_to seguimiento_respuesta_url(SeguimientoRespuesta.last)
  end

  test "should show seguimiento_respuesta" do
    get seguimiento_respuesta_url(@seguimiento_respuesta)
    assert_response :success
  end

  test "should get edit" do
    get edit_seguimiento_respuesta_url(@seguimiento_respuesta)
    assert_response :success
  end

  test "should update seguimiento_respuesta" do
    patch seguimiento_respuesta_url(@seguimiento_respuesta), params: { seguimiento_respuesta: { descripcion: @seguimiento_respuesta.descripcion, estatus: @seguimiento_respuesta.estatus } }
    assert_redirected_to seguimiento_respuesta_url(@seguimiento_respuesta)
  end

  test "should destroy seguimiento_respuesta" do
    assert_difference('SeguimientoRespuesta.count', -1) do
      delete seguimiento_respuesta_url(@seguimiento_respuesta)
    end

    assert_redirected_to seguimiento_respuestas_url
  end
end
