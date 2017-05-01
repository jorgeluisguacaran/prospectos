require 'test_helper'

class ProspectoClienteProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospecto_cliente_producto = prospecto_cliente_productos(:one)
  end

  test "should get index" do
    get prospecto_cliente_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_prospecto_cliente_producto_url
    assert_response :success
  end

  test "should create prospecto_cliente_producto" do
    assert_difference('ProspectoClienteProducto.count') do
      post prospecto_cliente_productos_url, params: { prospecto_cliente_producto: { Producto_id: @prospecto_cliente_producto.Producto_id, Prospecto_id: @prospecto_cliente_producto.Prospecto_id, cantidad: @prospecto_cliente_producto.cantidad, fecha_entrega: @prospecto_cliente_producto.fecha_entrega, fecha_reposicion: @prospecto_cliente_producto.fecha_reposicion } }
    end

    assert_redirected_to prospecto_cliente_producto_url(ProspectoClienteProducto.last)
  end

  test "should show prospecto_cliente_producto" do
    get prospecto_cliente_producto_url(@prospecto_cliente_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospecto_cliente_producto_url(@prospecto_cliente_producto)
    assert_response :success
  end

  test "should update prospecto_cliente_producto" do
    patch prospecto_cliente_producto_url(@prospecto_cliente_producto), params: { prospecto_cliente_producto: { Producto_id: @prospecto_cliente_producto.Producto_id, Prospecto_id: @prospecto_cliente_producto.Prospecto_id, cantidad: @prospecto_cliente_producto.cantidad, fecha_entrega: @prospecto_cliente_producto.fecha_entrega, fecha_reposicion: @prospecto_cliente_producto.fecha_reposicion } }
    assert_redirected_to prospecto_cliente_producto_url(@prospecto_cliente_producto)
  end

  test "should destroy prospecto_cliente_producto" do
    assert_difference('ProspectoClienteProducto.count', -1) do
      delete prospecto_cliente_producto_url(@prospecto_cliente_producto)
    end

    assert_redirected_to prospecto_cliente_productos_url
  end
end
