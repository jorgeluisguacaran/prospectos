class ProspectoPlanesController < ApplicationController
  before_action :set_prospecto_plan, only: [:show, :edit, :update, :destroy]

  # GET /prospecto_planes
  # GET /prospecto_planes.json
  def index
    @prospecto_planes = ProspectoPlan.all
  end

  # GET /prospecto_planes/1
  # GET /prospecto_planes/1.json
  def show
  end

  # GET /prospecto_planes/new
  def new
    @prospecto_plan = ProspectoPlan.new
  end

  # GET /prospecto_planes/1/edit
  def edit
  end

  # POST /prospecto_planes
  # POST /prospecto_planes.json
  def create
    @prospecto_plan = ProspectoPlan.new(prospecto_plan_params)

    respond_to do |format|
      if @prospecto_plan.save
        format.html { redirect_to @prospecto_plan, notice: 'Prospecto plan was successfully created.' }
        format.json { render :show, status: :created, location: @prospecto_plan }
      else
        format.html { render :new }
        format.json { render json: @prospecto_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospecto_planes/1
  # PATCH/PUT /prospecto_planes/1.json
  def update
    respond_to do |format|
      if @prospecto_plan.update(prospecto_plan_params)
        format.html { redirect_to @prospecto_plan, notice: 'Prospecto plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospecto_plan }
      else
        format.html { render :edit }
        format.json { render json: @prospecto_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospecto_planes/1
  # DELETE /prospecto_planes/1.json
  def destroy
    @prospecto_plan.destroy
    respond_to do |format|
      format.html { redirect_to prospecto_planes_url, notice: 'Prospecto plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospecto_plan
      @prospecto_plan = ProspectoPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospecto_plan_params
      params.require(:prospecto_plan).permit(:Prospecto_id, :Usuario_id, :Plan_id, :estatus)
    end
end
