require 'test_helper'

class PromedioHorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promedio_hora = promedio_horas(:one)
  end

  test "should get index" do
    get promedio_horas_url
    assert_response :success
  end

  test "should get new" do
    get new_promedio_hora_url
    assert_response :success
  end

  test "should create promedio_hora" do
    assert_difference('PromedioHora.count') do
      post promedio_horas_url, params: { promedio_hora: { descripcion: @promedio_hora.descripcion, estatus: @promedio_hora.estatus } }
    end

    assert_redirected_to promedio_hora_url(PromedioHora.last)
  end

  test "should show promedio_hora" do
    get promedio_hora_url(@promedio_hora)
    assert_response :success
  end

  test "should get edit" do
    get edit_promedio_hora_url(@promedio_hora)
    assert_response :success
  end

  test "should update promedio_hora" do
    patch promedio_hora_url(@promedio_hora), params: { promedio_hora: { descripcion: @promedio_hora.descripcion, estatus: @promedio_hora.estatus } }
    assert_redirected_to promedio_hora_url(@promedio_hora)
  end

  test "should destroy promedio_hora" do
    assert_difference('PromedioHora.count', -1) do
      delete promedio_hora_url(@promedio_hora)
    end

    assert_redirected_to promedio_horas_url
  end
end
