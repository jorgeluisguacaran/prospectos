class ProspectoMarcasController < ApplicationController
  before_action :set_prospecto_marca, only: [:show, :edit, :update, :destroy]

  # GET /prospecto_marcas
  # GET /prospecto_marcas.json
  def index
    @prospecto_marcas = ProspectoMarca.all
  end

  # GET /prospecto_marcas/1
  # GET /prospecto_marcas/1.json
  def show
  end

  # GET /prospecto_marcas/new
  def new
    @prospecto_marca = ProspectoMarca.new
  end

  # GET /prospecto_marcas/1/edit
  def edit
  end

  # POST /prospecto_marcas
  # POST /prospecto_marcas.json
  def create
    @prospecto_marca = ProspectoMarca.new(prospecto_marca_params)

    respond_to do |format|
      if @prospecto_marca.save
        format.html { redirect_to @prospecto_marca, notice: 'Prospecto marca was successfully created.' }
        format.json { render :show, status: :created, location: @prospecto_marca }
      else
        format.html { render :new }
        format.json { render json: @prospecto_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospecto_marcas/1
  # PATCH/PUT /prospecto_marcas/1.json
  def update
    respond_to do |format|
      if @prospecto_marca.update(prospecto_marca_params)
        format.html { redirect_to @prospecto_marca, notice: 'Prospecto marca was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospecto_marca }
      else
        format.html { render :edit }
        format.json { render json: @prospecto_marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospecto_marcas/1
  # DELETE /prospecto_marcas/1.json
  def destroy
    @prospecto_marca.destroy
    respond_to do |format|
      format.html { redirect_to prospecto_marcas_url, notice: 'Prospecto marca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospecto_marca
      @prospecto_marca = ProspectoMarca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospecto_marca_params
      params.require(:prospecto_marca).permit(:Prospecto_id, :Marca_id, :estatus)
    end
end
