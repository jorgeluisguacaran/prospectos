require 'test_helper'

class ProspectosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospecto = prospectos(:one)
  end

  test "should get index" do
    get prospectos_url
    assert_response :success
  end

  test "should get new" do
    get new_prospecto_url
    assert_response :success
  end

  test "should create prospecto" do
    assert_difference('Prospecto.count') do
      post prospectos_url, params: { prospecto: { buena_referencia: @prospecto.buena_referencia, cedula: @prospecto.cedula, donde_se_conocio: @prospecto.donde_se_conocio, facebook: @prospecto.facebook, google_plus: @prospecto.google_plus, instagram: @prospecto.instagram, llamar_en_seis_meses: @prospecto.llamar_en_seis_meses, primer_apellido: @prospecto.primer_apellido, primer_nombre: @prospecto.primer_nombre, segundo_apellido: @prospecto.segundo_apellido, segundo_nombre: @prospecto.segundo_nombre, twitter: @prospecto.twitter } }
    end

    assert_redirected_to prospecto_url(Prospecto.last)
  end

  test "should show prospecto" do
    get prospecto_url(@prospecto)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospecto_url(@prospecto)
    assert_response :success
  end

  test "should update prospecto" do
    patch prospecto_url(@prospecto), params: { prospecto: { buena_referencia: @prospecto.buena_referencia, cedula: @prospecto.cedula, donde_se_conocio: @prospecto.donde_se_conocio, facebook: @prospecto.facebook, google_plus: @prospecto.google_plus, instagram: @prospecto.instagram, llamar_en_seis_meses: @prospecto.llamar_en_seis_meses, primer_apellido: @prospecto.primer_apellido, primer_nombre: @prospecto.primer_nombre, segundo_apellido: @prospecto.segundo_apellido, segundo_nombre: @prospecto.segundo_nombre, twitter: @prospecto.twitter } }
    assert_redirected_to prospecto_url(@prospecto)
  end

  test "should destroy prospecto" do
    assert_difference('Prospecto.count', -1) do
      delete prospecto_url(@prospecto)
    end

    assert_redirected_to prospectos_url
  end
end
