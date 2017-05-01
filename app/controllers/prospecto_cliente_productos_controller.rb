class ProspectoClienteProductosController < ApplicationController
  before_action :set_prospecto_cliente_producto, only: [:show, :edit, :update, :destroy]

  # GET /prospecto_cliente_productos
  # GET /prospecto_cliente_productos.json
  def index
    @prospecto_cliente_productos = ProspectoClienteProducto.all
  end

  # GET /prospecto_cliente_productos/1
  # GET /prospecto_cliente_productos/1.json
  def show
  end

  # GET /prospecto_cliente_productos/new
  def new
    @prospecto_cliente_producto = ProspectoClienteProducto.new
  end

  # GET /prospecto_cliente_productos/1/edit
  def edit
  end

  # POST /prospecto_cliente_productos
  # POST /prospecto_cliente_productos.json
  def create
    @prospecto_cliente_producto = ProspectoClienteProducto.new(prospecto_cliente_producto_params)

    respond_to do |format|
      if @prospecto_cliente_producto.save
        format.html { redirect_to @prospecto_cliente_producto, notice: 'Prospecto cliente producto was successfully created.' }
        format.json { render :show, status: :created, location: @prospecto_cliente_producto }
      else
        format.html { render :new }
        format.json { render json: @prospecto_cliente_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospecto_cliente_productos/1
  # PATCH/PUT /prospecto_cliente_productos/1.json
  def update
    respond_to do |format|
      if @prospecto_cliente_producto.update(prospecto_cliente_producto_params)
        format.html { redirect_to @prospecto_cliente_producto, notice: 'Prospecto cliente producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospecto_cliente_producto }
      else
        format.html { render :edit }
        format.json { render json: @prospecto_cliente_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospecto_cliente_productos/1
  # DELETE /prospecto_cliente_productos/1.json
  def destroy
    @prospecto_cliente_producto.destroy
    respond_to do |format|
      format.html { redirect_to prospecto_cliente_productos_url, notice: 'Prospecto cliente producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospecto_cliente_producto
      @prospecto_cliente_producto = ProspectoClienteProducto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospecto_cliente_producto_params
      params.require(:prospecto_cliente_producto).permit(:Prospecto_id, :Producto_id, :cantidad, :fecha_entrega, :fecha_reposicion)
    end
end
