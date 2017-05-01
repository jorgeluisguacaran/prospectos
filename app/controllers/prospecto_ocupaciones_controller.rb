class ProspectoOcupacionesController < ApplicationController
  before_action :set_prospecto_ocupacion, only: [:show, :edit, :update, :destroy]

  # GET /prospecto_ocupaciones
  # GET /prospecto_ocupaciones.json
  def index
    @prospecto_ocupaciones = ProspectoOcupacion.all
  end

  # GET /prospecto_ocupaciones/1
  # GET /prospecto_ocupaciones/1.json
  def show
  end

  # GET /prospecto_ocupaciones/new
  def new
    @prospecto_ocupacion = ProspectoOcupacion.new
  end

  # GET /prospecto_ocupaciones/1/edit
  def edit
  end

  # POST /prospecto_ocupaciones
  # POST /prospecto_ocupaciones.json
  def create
    @prospecto_ocupacion = ProspectoOcupacion.new(prospecto_ocupacion_params)

    respond_to do |format|
      if @prospecto_ocupacion.save
        format.html { redirect_to @prospecto_ocupacion, notice: 'Prospecto ocupacion was successfully created.' }
        format.json { render :show, status: :created, location: @prospecto_ocupacion }
      else
        format.html { render :new }
        format.json { render json: @prospecto_ocupacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospecto_ocupaciones/1
  # PATCH/PUT /prospecto_ocupaciones/1.json
  def update
    respond_to do |format|
      if @prospecto_ocupacion.update(prospecto_ocupacion_params)
        format.html { redirect_to @prospecto_ocupacion, notice: 'Prospecto ocupacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospecto_ocupacion }
      else
        format.html { render :edit }
        format.json { render json: @prospecto_ocupacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospecto_ocupaciones/1
  # DELETE /prospecto_ocupaciones/1.json
  def destroy
    @prospecto_ocupacion.destroy
    respond_to do |format|
      format.html { redirect_to prospecto_ocupaciones_url, notice: 'Prospecto ocupacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospecto_ocupacion
      @prospecto_ocupacion = ProspectoOcupacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospecto_ocupacion_params
      params.require(:prospecto_ocupacion).permit(:Prospecto_id, :ocupacion, :estatus)
    end
end
