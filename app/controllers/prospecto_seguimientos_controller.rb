class ProspectoSeguimientosController < ApplicationController
  before_action :set_prospecto_seguimiento, only: [:show, :edit, :update, :destroy]

  # GET /prospecto_seguimientos
  # GET /prospecto_seguimientos.json
  def index
    @prospecto_seguimientos = ProspectoSeguimiento.all
  end

  # GET /prospecto_seguimientos/1
  # GET /prospecto_seguimientos/1.json
  def show
  end

  # GET /prospecto_seguimientos/new
  def new
    @prospecto_seguimiento = ProspectoSeguimiento.new
  end

  # GET /prospecto_seguimientos/1/edit
  def edit
  end

  # POST /prospecto_seguimientos
  # POST /prospecto_seguimientos.json
  def create
    @prospecto_seguimiento = ProspectoSeguimiento.new(prospecto_seguimiento_params)

    respond_to do |format|
      if @prospecto_seguimiento.save
        format.html { redirect_to @prospecto_seguimiento, notice: 'Prospecto seguimiento was successfully created.' }
        format.json { render :show, status: :created, location: @prospecto_seguimiento }
      else
        format.html { render :new }
        format.json { render json: @prospecto_seguimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospecto_seguimientos/1
  # PATCH/PUT /prospecto_seguimientos/1.json
  def update
    respond_to do |format|
      if @prospecto_seguimiento.update(prospecto_seguimiento_params)
        format.html { redirect_to @prospecto_seguimiento, notice: 'Prospecto seguimiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospecto_seguimiento }
      else
        format.html { render :edit }
        format.json { render json: @prospecto_seguimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospecto_seguimientos/1
  # DELETE /prospecto_seguimientos/1.json
  def destroy
    @prospecto_seguimiento.destroy
    respond_to do |format|
      format.html { redirect_to prospecto_seguimientos_url, notice: 'Prospecto seguimiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospecto_seguimiento
      @prospecto_seguimiento = ProspectoSeguimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospecto_seguimiento_params
      params.require(:prospecto_seguimiento).permit(:Prospecto_id, :escala_interes, :ayuda_subir_nivel, :fecha_proxima_reunion, :aspira_salario, :PromedioHora_id, :PromedioMes_id, :dispuesto_a_comenzar, :estatus)
    end
end
