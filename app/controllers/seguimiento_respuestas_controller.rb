class SeguimientoRespuestasController < ApplicationController
  before_action :set_seguimiento_respuesta, only: [:show, :edit, :update, :destroy]

  # GET /seguimiento_respuestas
  # GET /seguimiento_respuestas.json
  def index
    @seguimiento_respuestas = SeguimientoRespuesta.all
  end

  # GET /seguimiento_respuestas/1
  # GET /seguimiento_respuestas/1.json
  def show
  end

  # GET /seguimiento_respuestas/new
  def new
    @seguimiento_respuesta = SeguimientoRespuesta.new
  end

  # GET /seguimiento_respuestas/1/edit
  def edit
  end

  # POST /seguimiento_respuestas
  # POST /seguimiento_respuestas.json
  def create
    @seguimiento_respuesta = SeguimientoRespuesta.new(seguimiento_respuesta_params)

    respond_to do |format|
      if @seguimiento_respuesta.save
        format.html { redirect_to @seguimiento_respuesta, notice: 'Seguimiento respuesta was successfully created.' }
        format.json { render :show, status: :created, location: @seguimiento_respuesta }
      else
        format.html { render :new }
        format.json { render json: @seguimiento_respuesta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seguimiento_respuestas/1
  # PATCH/PUT /seguimiento_respuestas/1.json
  def update
    respond_to do |format|
      if @seguimiento_respuesta.update(seguimiento_respuesta_params)
        format.html { redirect_to @seguimiento_respuesta, notice: 'Seguimiento respuesta was successfully updated.' }
        format.json { render :show, status: :ok, location: @seguimiento_respuesta }
      else
        format.html { render :edit }
        format.json { render json: @seguimiento_respuesta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seguimiento_respuestas/1
  # DELETE /seguimiento_respuestas/1.json
  def destroy
    @seguimiento_respuesta.destroy
    respond_to do |format|
      format.html { redirect_to seguimiento_respuestas_url, notice: 'Seguimiento respuesta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seguimiento_respuesta
      @seguimiento_respuesta = SeguimientoRespuesta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seguimiento_respuesta_params
      params.require(:seguimiento_respuesta).permit(:descripcion, :estatus)
    end
end
