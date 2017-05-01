class PromedioHorasController < ApplicationController
  before_action :set_promedio_hora, only: [:show, :edit, :update, :destroy]

  # GET /promedio_horas
  # GET /promedio_horas.json
  def index
    @promedio_horas = PromedioHora.all
  end

  # GET /promedio_horas/1
  # GET /promedio_horas/1.json
  def show
  end

  # GET /promedio_horas/new
  def new
    @promedio_hora = PromedioHora.new
  end

  # GET /promedio_horas/1/edit
  def edit
  end

  # POST /promedio_horas
  # POST /promedio_horas.json
  def create
    @promedio_hora = PromedioHora.new(promedio_hora_params)

    respond_to do |format|
      if @promedio_hora.save
        format.html { redirect_to @promedio_hora, notice: 'Promedio hora was successfully created.' }
        format.json { render :show, status: :created, location: @promedio_hora }
      else
        format.html { render :new }
        format.json { render json: @promedio_hora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promedio_horas/1
  # PATCH/PUT /promedio_horas/1.json
  def update
    respond_to do |format|
      if @promedio_hora.update(promedio_hora_params)
        format.html { redirect_to @promedio_hora, notice: 'Promedio hora was successfully updated.' }
        format.json { render :show, status: :ok, location: @promedio_hora }
      else
        format.html { render :edit }
        format.json { render json: @promedio_hora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promedio_horas/1
  # DELETE /promedio_horas/1.json
  def destroy
    @promedio_hora.destroy
    respond_to do |format|
      format.html { redirect_to promedio_horas_url, notice: 'Promedio hora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promedio_hora
      @promedio_hora = PromedioHora.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promedio_hora_params
      params.require(:promedio_hora).permit(:descripcion, :estatus)
    end
end
