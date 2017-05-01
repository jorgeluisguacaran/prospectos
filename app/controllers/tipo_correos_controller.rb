class TipoCorreosController < ApplicationController
  before_action :set_tipo_correo, only: [:show, :edit, :update, :destroy]

  # GET /tipo_correos
  # GET /tipo_correos.json
  def index
    @tipo_correos = TipoCorreo.all
  end

  # GET /tipo_correos/1
  # GET /tipo_correos/1.json
  def show
  end

  # GET /tipo_correos/new
  def new
    @tipo_correo = TipoCorreo.new
  end

  # GET /tipo_correos/1/edit
  def edit
  end

  # POST /tipo_correos
  # POST /tipo_correos.json
  def create
    @tipo_correo = TipoCorreo.new(tipo_correo_params)

    respond_to do |format|
      if @tipo_correo.save
        format.html { redirect_to @tipo_correo, notice: 'Tipo correo was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_correo }
      else
        format.html { render :new }
        format.json { render json: @tipo_correo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_correos/1
  # PATCH/PUT /tipo_correos/1.json
  def update
    respond_to do |format|
      if @tipo_correo.update(tipo_correo_params)
        format.html { redirect_to @tipo_correo, notice: 'Tipo correo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_correo }
      else
        format.html { render :edit }
        format.json { render json: @tipo_correo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_correos/1
  # DELETE /tipo_correos/1.json
  def destroy
    @tipo_correo.destroy
    respond_to do |format|
      format.html { redirect_to tipo_correos_url, notice: 'Tipo correo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_correo
      @tipo_correo = TipoCorreo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_correo_params
      params.require(:tipo_correo).permit(:descripcion, :estatus)
    end
end
