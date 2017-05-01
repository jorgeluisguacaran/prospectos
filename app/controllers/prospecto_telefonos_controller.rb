class ProspectoTelefonosController < ApplicationController
  before_action :set_prospecto_telefono, only: [:show, :edit, :update, :destroy]

  # GET /prospecto_telefonos
  # GET /prospecto_telefonos.json
  def index
    @prospecto_telefonos = ProspectoTelefono.all
  end

  # GET /prospecto_telefonos/1
  # GET /prospecto_telefonos/1.json
  def show
  end

  # GET /prospecto_telefonos/new
  def new
    @prospecto_telefono = ProspectoTelefono.new
  end

  # GET /prospecto_telefonos/1/edit
  def edit
  end

  # POST /prospecto_telefonos
  # POST /prospecto_telefonos.json
  def create
    @prospecto_telefono = ProspectoTelefono.new(prospecto_telefono_params)

    respond_to do |format|
      if @prospecto_telefono.save
        format.html { redirect_to @prospecto_telefono, notice: 'Prospecto telefono was successfully created.' }
        format.json { render :show, status: :created, location: @prospecto_telefono }
      else
        format.html { render :new }
        format.json { render json: @prospecto_telefono.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospecto_telefonos/1
  # PATCH/PUT /prospecto_telefonos/1.json
  def update
    respond_to do |format|
      if @prospecto_telefono.update(prospecto_telefono_params)
        format.html { redirect_to @prospecto_telefono, notice: 'Prospecto telefono was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospecto_telefono }
      else
        format.html { render :edit }
        format.json { render json: @prospecto_telefono.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospecto_telefonos/1
  # DELETE /prospecto_telefonos/1.json
  def destroy
    @prospecto_telefono.destroy
    respond_to do |format|
      format.html { redirect_to prospecto_telefonos_url, notice: 'Prospecto telefono was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospecto_telefono
      @prospecto_telefono = ProspectoTelefono.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospecto_telefono_params
      params.require(:prospecto_telefono).permit(:Prospecto_id, :telefono, :TipoTelefono_id, :estatus)
    end
end
