class TipoTelefonosController < ApplicationController
  before_action :set_tipo_telefono, only: [:show, :edit, :update, :destroy]

  # GET /tipo_telefonos
  # GET /tipo_telefonos.json
  def index
    @tipo_telefonos = TipoTelefono.all
  end

  # GET /tipo_telefonos/1
  # GET /tipo_telefonos/1.json
  def show
  end

  # GET /tipo_telefonos/new
  def new
    @tipo_telefono = TipoTelefono.new
  end

  # GET /tipo_telefonos/1/edit
  def edit
  end

  # POST /tipo_telefonos
  # POST /tipo_telefonos.json
  def create
    @tipo_telefono = TipoTelefono.new(tipo_telefono_params)

    respond_to do |format|
      if @tipo_telefono.save
        format.html { redirect_to @tipo_telefono, notice: 'Tipo telefono was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_telefono }
      else
        format.html { render :new }
        format.json { render json: @tipo_telefono.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_telefonos/1
  # PATCH/PUT /tipo_telefonos/1.json
  def update
    respond_to do |format|
      if @tipo_telefono.update(tipo_telefono_params)
        format.html { redirect_to @tipo_telefono, notice: 'Tipo telefono was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_telefono }
      else
        format.html { render :edit }
        format.json { render json: @tipo_telefono.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_telefonos/1
  # DELETE /tipo_telefonos/1.json
  def destroy
    @tipo_telefono.destroy
    respond_to do |format|
      format.html { redirect_to tipo_telefonos_url, notice: 'Tipo telefono was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_telefono
      @tipo_telefono = TipoTelefono.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_telefono_params
      params.require(:tipo_telefono).permit(:descripcion, :estatus)
    end
end
