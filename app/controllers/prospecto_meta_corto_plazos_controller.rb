class ProspectoMetaCortoPlazosController < ApplicationController
  before_action :set_prospecto_meta_corto_plazo, only: [:show, :edit, :update, :destroy]

  # GET /prospecto_meta_corto_plazos
  # GET /prospecto_meta_corto_plazos.json
  def index
    @prospecto_meta_corto_plazos = ProspectoMetaCortoPlazo.all
  end

  # GET /prospecto_meta_corto_plazos/1
  # GET /prospecto_meta_corto_plazos/1.json
  def show
  end

  # GET /prospecto_meta_corto_plazos/new
  def new
    @prospecto_meta_corto_plazo = ProspectoMetaCortoPlazo.new
  end

  # GET /prospecto_meta_corto_plazos/1/edit
  def edit
  end

  # POST /prospecto_meta_corto_plazos
  # POST /prospecto_meta_corto_plazos.json
  def create
    @prospecto_meta_corto_plazo = ProspectoMetaCortoPlazo.new(prospecto_meta_corto_plazo_params)

    respond_to do |format|
      if @prospecto_meta_corto_plazo.save
        format.html { redirect_to @prospecto_meta_corto_plazo, notice: 'Prospecto meta corto plazo was successfully created.' }
        format.json { render :show, status: :created, location: @prospecto_meta_corto_plazo }
      else
        format.html { render :new }
        format.json { render json: @prospecto_meta_corto_plazo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospecto_meta_corto_plazos/1
  # PATCH/PUT /prospecto_meta_corto_plazos/1.json
  def update
    respond_to do |format|
      if @prospecto_meta_corto_plazo.update(prospecto_meta_corto_plazo_params)
        format.html { redirect_to @prospecto_meta_corto_plazo, notice: 'Prospecto meta corto plazo was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospecto_meta_corto_plazo }
      else
        format.html { render :edit }
        format.json { render json: @prospecto_meta_corto_plazo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospecto_meta_corto_plazos/1
  # DELETE /prospecto_meta_corto_plazos/1.json
  def destroy
    @prospecto_meta_corto_plazo.destroy
    respond_to do |format|
      format.html { redirect_to prospecto_meta_corto_plazos_url, notice: 'Prospecto meta corto plazo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospecto_meta_corto_plazo
      @prospecto_meta_corto_plazo = ProspectoMetaCortoPlazo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospecto_meta_corto_plazo_params
      params.require(:prospecto_meta_corto_plazo).permit(:prospecto_id, :meta_corta, :estatus)
    end
end
