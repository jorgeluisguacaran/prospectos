class ProspectoCorreosController < ApplicationController
  before_action :set_prospecto_correo, only: [:show, :edit, :update, :destroy]

  # GET /prospecto_correos
  # GET /prospecto_correos.json
  def index
    @prospecto_correos = ProspectoCorreo.all
  end

  # GET /prospecto_correos/1
  # GET /prospecto_correos/1.json
  def show
  end

  # GET /prospecto_correos/new
  def new
    @prospecto_correo = ProspectoCorreo.new
  end

  # GET /prospecto_correos/1/edit
  def edit
  end

  # POST /prospecto_correos
  # POST /prospecto_correos.json
  def create
    @prospecto_correo = ProspectoCorreo.new(prospecto_correo_params)

    respond_to do |format|
      if @prospecto_correo.save
        format.html { redirect_to @prospecto_correo, notice: 'Prospecto correo was successfully created.' }
        format.json { render :show, status: :created, location: @prospecto_correo }
      else
        format.html { render :new }
        format.json { render json: @prospecto_correo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospecto_correos/1
  # PATCH/PUT /prospecto_correos/1.json
  def update
    respond_to do |format|
      if @prospecto_correo.update(prospecto_correo_params)
        format.html { redirect_to @prospecto_correo, notice: 'Prospecto correo was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospecto_correo }
      else
        format.html { render :edit }
        format.json { render json: @prospecto_correo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospecto_correos/1
  # DELETE /prospecto_correos/1.json
  def destroy
    @prospecto_correo.destroy
    respond_to do |format|
      format.html { redirect_to prospecto_correos_url, notice: 'Prospecto correo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospecto_correo
      @prospecto_correo = ProspectoCorreo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospecto_correo_params
      params.require(:prospecto_correo).permit(:Prospecto_id, :correo, :TipoCorreo_id, :estatus)
    end
end
