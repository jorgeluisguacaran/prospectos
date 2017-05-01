class ProspectoReferidosController < ApplicationController
  before_action :set_prospecto_referido, only: [:show, :edit, :update, :destroy]

  # GET /prospecto_referidos
  # GET /prospecto_referidos.json
  def index
    @prospecto_referidos = ProspectoReferido.all
  end

  # GET /prospecto_referidos/1
  # GET /prospecto_referidos/1.json
  def show
  end

  # GET /prospecto_referidos/new
  def new
    @prospecto_referido = ProspectoReferido.new
  end

  # GET /prospecto_referidos/1/edit
  def edit
  end

  # POST /prospecto_referidos
  # POST /prospecto_referidos.json
  def create
    @prospecto_referido = ProspectoReferido.new(prospecto_referido_params)

    respond_to do |format|
      if @prospecto_referido.save
        format.html { redirect_to @prospecto_referido, notice: 'Prospecto referido was successfully created.' }
        format.json { render :show, status: :created, location: @prospecto_referido }
      else
        format.html { render :new }
        format.json { render json: @prospecto_referido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospecto_referidos/1
  # PATCH/PUT /prospecto_referidos/1.json
  def update
    respond_to do |format|
      if @prospecto_referido.update(prospecto_referido_params)
        format.html { redirect_to @prospecto_referido, notice: 'Prospecto referido was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospecto_referido }
      else
        format.html { render :edit }
        format.json { render json: @prospecto_referido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospecto_referidos/1
  # DELETE /prospecto_referidos/1.json
  def destroy
    @prospecto_referido.destroy
    respond_to do |format|
      format.html { redirect_to prospecto_referidos_url, notice: 'Prospecto referido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospecto_referido
      @prospecto_referido = ProspectoReferido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospecto_referido_params
      params.require(:prospecto_referido).permit(:Prospecto_id, :nombre_referido, :ocupacion_referido, :telefono_referido)
    end
end
