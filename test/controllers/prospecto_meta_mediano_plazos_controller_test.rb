require 'test_helper'

class ProspectoMetaMedianoPlazosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospecto_meta_mediano_plazo = prospecto_meta_mediano_plazos(:one)
  end

  test "should get index" do
    get prospecto_meta_mediano_plazos_url
    assert_response :success
  end

  test "should get new" do
    get new_prospecto_meta_mediano_plazo_url
    assert_response :success
  end

  test "should create prospecto_meta_mediano_plazo" do
    assert_difference('ProspectoMetaMedianoPlazo.count') do
      post prospecto_meta_mediano_plazos_url, params: { prospecto_meta_mediano_plazo: { estatus: @prospecto_meta_mediano_plazo.estatus, meta_mediana: @prospecto_meta_mediano_plazo.meta_mediana, prospecto_id: @prospecto_meta_mediano_plazo.prospecto_id } }
    end

    assert_redirected_to prospecto_meta_mediano_plazo_url(ProspectoMetaMedianoPlazo.last)
  end

  test "should show prospecto_meta_mediano_plazo" do
    get prospecto_meta_mediano_plazo_url(@prospecto_meta_mediano_plazo)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospecto_meta_mediano_plazo_url(@prospecto_meta_mediano_plazo)
    assert_response :success
  end

  test "should update prospecto_meta_mediano_plazo" do
    patch prospecto_meta_mediano_plazo_url(@prospecto_meta_mediano_plazo), params: { prospecto_meta_mediano_plazo: { estatus: @prospecto_meta_mediano_plazo.estatus, meta_mediana: @prospecto_meta_mediano_plazo.meta_mediana, prospecto_id: @prospecto_meta_mediano_plazo.prospecto_id } }
    assert_redirected_to prospecto_meta_mediano_plazo_url(@prospecto_meta_mediano_plazo)
  end

  test "should destroy prospecto_meta_mediano_plazo" do
    assert_difference('ProspectoMetaMedianoPlazo.count', -1) do
      delete prospecto_meta_mediano_plazo_url(@prospecto_meta_mediano_plazo)
    end

    assert_redirected_to prospecto_meta_mediano_plazos_url
  end
end
