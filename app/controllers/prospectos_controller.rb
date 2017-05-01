class ProspectosController < ApplicationController
  before_action :set_prospecto, only: [:show, :edit, :update, :destroy]

  # GET /prospectos
  # GET /prospectos.json
  def index
    @prospectos = Prospecto.all
  end

  # GET /prospectos/1
  # GET /prospectos/1.json
  def show
  end

  # GET /prospectos/new
  def new
    @prospecto = Prospecto.new
  end

  # GET /prospectos/1/edit
  def edit
  end

  # POST /prospectos
  # POST /prospectos.json
  def create
    @prospecto = Prospecto.new(prospecto_params)

    respond_to do |format|
      if @prospecto.save
        format.html { redirect_to @prospecto, notice: 'Prospecto was successfully created.' }
        format.json { render :show, status: :created, location: @prospecto }
      else
        format.html { render :new }
        format.json { render json: @prospecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospectos/1
  # PATCH/PUT /prospectos/1.json
  def update
    respond_to do |format|
      if @prospecto.update(prospecto_params)
        format.html { redirect_to @prospecto, notice: 'Prospecto was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospecto }
      else
        format.html { render :edit }
        format.json { render json: @prospecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospectos/1
  # DELETE /prospectos/1.json
  def destroy
    @prospecto.destroy
    respond_to do |format|
      format.html { redirect_to prospectos_url, notice: 'Prospecto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospecto
      @prospecto = Prospecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospecto_params
      params.require(:prospecto).permit(:primer_nombre, :telefono1, :telefono2, :correo, :twitter, :facebook, :instagram, :donde_se_conocio, :educable, :influyente, :exitoso,:emprendedor, :buena_referencia, :llamar_en_seis_meses, :dedicacion )
    end
end
