class SeguimientoMaterialesController < ApplicationController
  before_action :set_seguimiento_material, only: [:show, :edit, :update, :destroy]

  # GET /seguimiento_materiales
  # GET /seguimiento_materiales.json
  def index
    @seguimiento_materiales = SeguimientoMaterial.all
  end

  # GET /seguimiento_materiales/1
  # GET /seguimiento_materiales/1.json
  def show
  end

  # GET /seguimiento_materiales/new
  def new
    @seguimiento_material = SeguimientoMaterial.new
  end

  # GET /seguimiento_materiales/1/edit
  def edit
  end

  # POST /seguimiento_materiales
  # POST /seguimiento_materiales.json
  def create
    @seguimiento_material = SeguimientoMaterial.new(seguimiento_material_params)

    respond_to do |format|
      if @seguimiento_material.save
        format.html { redirect_to @seguimiento_material, notice: 'Seguimiento material was successfully created.' }
        format.json { render :show, status: :created, location: @seguimiento_material }
      else
        format.html { render :new }
        format.json { render json: @seguimiento_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seguimiento_materiales/1
  # PATCH/PUT /seguimiento_materiales/1.json
  def update
    respond_to do |format|
      if @seguimiento_material.update(seguimiento_material_params)
        format.html { redirect_to @seguimiento_material, notice: 'Seguimiento material was successfully updated.' }
        format.json { render :show, status: :ok, location: @seguimiento_material }
      else
        format.html { render :edit }
        format.json { render json: @seguimiento_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seguimiento_materiales/1
  # DELETE /seguimiento_materiales/1.json
  def destroy
    @seguimiento_material.destroy
    respond_to do |format|
      format.html { redirect_to seguimiento_materiales_url, notice: 'Seguimiento material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seguimiento_material
      @seguimiento_material = SeguimientoMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seguimiento_material_params
      params.require(:seguimiento_material).permit(:descripcion, :estatus)
    end
end
