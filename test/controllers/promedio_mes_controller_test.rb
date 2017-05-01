require 'test_helper'

class PromedioMesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promedio_me = promedio_mes(:one)
  end

  test "should get index" do
    get promedio_mes_url
    assert_response :success
  end

  test "should get new" do
    get new_promedio_me_url
    assert_response :success
  end

  test "should create promedio_me" do
    assert_difference('PromedioMe.count') do
      post promedio_mes_url, params: { promedio_me: { descripcion: @promedio_me.descripcion, estatus: @promedio_me.estatus } }
    end

    assert_redirected_to promedio_me_url(PromedioMe.last)
  end

  test "should show promedio_me" do
    get promedio_me_url(@promedio_me)
    assert_response :success
  end

  test "should get edit" do
    get edit_promedio_me_url(@promedio_me)
    assert_response :success
  end

  test "should update promedio_me" do
    patch promedio_me_url(@promedio_me), params: { promedio_me: { descripcion: @promedio_me.descripcion, estatus: @promedio_me.estatus } }
    assert_redirected_to promedio_me_url(@promedio_me)
  end

  test "should destroy promedio_me" do
    assert_difference('PromedioMe.count', -1) do
      delete promedio_me_url(@promedio_me)
    end

    assert_redirected_to promedio_mes_url
  end
end
