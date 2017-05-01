require 'test_helper'

class ProspectoMarcasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospecto_marca = prospecto_marcas(:one)
  end

  test "should get index" do
    get prospecto_marcas_url
    assert_response :success
  end

  test "should get new" do
    get new_prospecto_marca_url
    assert_response :success
  end

  test "should create prospecto_marca" do
    assert_difference('ProspectoMarca.count') do
      post prospecto_marcas_url, params: { prospecto_marca: { Marca_id: @prospecto_marca.Marca_id, Prospecto_id: @prospecto_marca.Prospecto_id, estatus: @prospecto_marca.estatus } }
    end

    assert_redirected_to prospecto_marca_url(ProspectoMarca.last)
  end

  test "should show prospecto_marca" do
    get prospecto_marca_url(@prospecto_marca)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospecto_marca_url(@prospecto_marca)
    assert_response :success
  end

  test "should update prospecto_marca" do
    patch prospecto_marca_url(@prospecto_marca), params: { prospecto_marca: { Marca_id: @prospecto_marca.Marca_id, Prospecto_id: @prospecto_marca.Prospecto_id, estatus: @prospecto_marca.estatus } }
    assert_redirected_to prospecto_marca_url(@prospecto_marca)
  end

  test "should destroy prospecto_marca" do
    assert_difference('ProspectoMarca.count', -1) do
      delete prospecto_marca_url(@prospecto_marca)
    end

    assert_redirected_to prospecto_marcas_url
  end
end
