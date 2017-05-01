require 'test_helper'

class ProspectoMetaCortoPlazosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospecto_meta_corto_plazo = prospecto_meta_corto_plazos(:one)
  end

  test "should get index" do
    get prospecto_meta_corto_plazos_url
    assert_response :success
  end

  test "should get new" do
    get new_prospecto_meta_corto_plazo_url
    assert_response :success
  end

  test "should create prospecto_meta_corto_plazo" do
    assert_difference('ProspectoMetaCortoPlazo.count') do
      post prospecto_meta_corto_plazos_url, params: { prospecto_meta_corto_plazo: { estatus: @prospecto_meta_corto_plazo.estatus, meta_corta: @prospecto_meta_corto_plazo.meta_corta, prospecto_id: @prospecto_meta_corto_plazo.prospecto_id } }
    end

    assert_redirected_to prospecto_meta_corto_plazo_url(ProspectoMetaCortoPlazo.last)
  end

  test "should show prospecto_meta_corto_plazo" do
    get prospecto_meta_corto_plazo_url(@prospecto_meta_corto_plazo)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospecto_meta_corto_plazo_url(@prospecto_meta_corto_plazo)
    assert_response :success
  end

  test "should update prospecto_meta_corto_plazo" do
    patch prospecto_meta_corto_plazo_url(@prospecto_meta_corto_plazo), params: { prospecto_meta_corto_plazo: { estatus: @prospecto_meta_corto_plazo.estatus, meta_corta: @prospecto_meta_corto_plazo.meta_corta, prospecto_id: @prospecto_meta_corto_plazo.prospecto_id } }
    assert_redirected_to prospecto_meta_corto_plazo_url(@prospecto_meta_corto_plazo)
  end

  test "should destroy prospecto_meta_corto_plazo" do
    assert_difference('ProspectoMetaCortoPlazo.count', -1) do
      delete prospecto_meta_corto_plazo_url(@prospecto_meta_corto_plazo)
    end

    assert_redirected_to prospecto_meta_corto_plazos_url
  end
end
