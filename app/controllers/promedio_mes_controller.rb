class PromedioMesController < ApplicationController
  before_action :set_promedio_me, only: [:show, :edit, :update, :destroy]

  # GET /promedio_mes
  # GET /promedio_mes.json
  def index
    @promedio_mes = PromedioMe.all
  end

  # GET /promedio_mes/1
  # GET /promedio_mes/1.json
  def show
  end

  # GET /promedio_mes/new
  def new
    @promedio_me = PromedioMe.new
  end

  # GET /promedio_mes/1/edit
  def edit
  end

  # POST /promedio_mes
  # POST /promedio_mes.json
  def create
    @promedio_me = PromedioMe.new(promedio_me_params)

    respond_to do |format|
      if @promedio_me.save
        format.html { redirect_to @promedio_me, notice: 'Promedio me was successfully created.' }
        format.json { render :show, status: :created, location: @promedio_me }
      else
        format.html { render :new }
        format.json { render json: @promedio_me.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promedio_mes/1
  # PATCH/PUT /promedio_mes/1.json
  def update
    respond_to do |format|
      if @promedio_me.update(promedio_me_params)
        format.html { redirect_to @promedio_me, notice: 'Promedio me was successfully updated.' }
        format.json { render :show, status: :ok, location: @promedio_me }
      else
        format.html { render :edit }
        format.json { render json: @promedio_me.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promedio_mes/1
  # DELETE /promedio_mes/1.json
  def destroy
    @promedio_me.destroy
    respond_to do |format|
      format.html { redirect_to promedio_mes_url, notice: 'Promedio me was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promedio_me
      @promedio_me = PromedioMe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promedio_me_params
      params.require(:promedio_me).permit(:descripcion, :estatus)
    end
end
