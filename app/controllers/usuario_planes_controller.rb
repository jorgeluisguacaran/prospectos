class UsuarioPlanesController < ApplicationController
  before_action :set_usuario_plan, only: [:show, :edit, :update, :destroy]

  # GET /usuario_planes
  # GET /usuario_planes.json
  def index
    @usuario_planes = UsuarioPlan.all
  end

  # GET /usuario_planes/1
  # GET /usuario_planes/1.json
  def show
  end

  # GET /usuario_planes/new
  def new
    @usuario_plan = UsuarioPlan.new
  end

  # GET /usuario_planes/1/edit
  def edit
  end

  # POST /usuario_planes
  # POST /usuario_planes.json
  def create
    @usuario_plan = UsuarioPlan.new(usuario_plan_params)

    respond_to do |format|
      if @usuario_plan.save
        format.html { redirect_to @usuario_plan, notice: 'Usuario plan was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_plan }
      else
        format.html { render :new }
        format.json { render json: @usuario_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_planes/1
  # PATCH/PUT /usuario_planes/1.json
  def update
    respond_to do |format|
      if @usuario_plan.update(usuario_plan_params)
        format.html { redirect_to @usuario_plan, notice: 'Usuario plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_plan }
      else
        format.html { render :edit }
        format.json { render json: @usuario_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_planes/1
  # DELETE /usuario_planes/1.json
  def destroy
    @usuario_plan.destroy
    respond_to do |format|
      format.html { redirect_to usuario_planes_url, notice: 'Usuario plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_plan
      @usuario_plan = UsuarioPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_plan_params
      params.require(:usuario_plan).permit(:Usuario_id, :Plan_id, :nro_personas, :fecha_asignacion, :estatus)
    end
end
