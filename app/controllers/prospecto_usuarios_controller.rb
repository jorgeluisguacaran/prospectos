class ProspectoUsuariosController < ApplicationController
  before_action :set_prospecto_usuario, only: [:show, :edit, :update, :destroy]

  # GET /prospecto_usuarios
  # GET /prospecto_usuarios.json
  def index
    @prospecto_usuarios = ProspectoUsuario.all
  end

  # GET /prospecto_usuarios/1
  # GET /prospecto_usuarios/1.json
  def show
  end

  # GET /prospecto_usuarios/new
  def new
    @prospecto_usuario = ProspectoUsuario.new
  end

  # GET /prospecto_usuarios/1/edit
  def edit
  end

  # POST /prospecto_usuarios
  # POST /prospecto_usuarios.json
  def create
    @prospecto_usuario = ProspectoUsuario.new(prospecto_usuario_params)

    respond_to do |format|
      if @prospecto_usuario.save
        format.html { redirect_to @prospecto_usuario, notice: 'Prospecto usuario was successfully created.' }
        format.json { render :show, status: :created, location: @prospecto_usuario }
      else
        format.html { render :new }
        format.json { render json: @prospecto_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospecto_usuarios/1
  # PATCH/PUT /prospecto_usuarios/1.json
  def update
    respond_to do |format|
      if @prospecto_usuario.update(prospecto_usuario_params)
        format.html { redirect_to @prospecto_usuario, notice: 'Prospecto usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospecto_usuario }
      else
        format.html { render :edit }
        format.json { render json: @prospecto_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospecto_usuarios/1
  # DELETE /prospecto_usuarios/1.json
  def destroy
    @prospecto_usuario.destroy
    respond_to do |format|
      format.html { redirect_to prospecto_usuarios_url, notice: 'Prospecto usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospecto_usuario
      @prospecto_usuario = ProspectoUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospecto_usuario_params
      params.require(:prospecto_usuario).permit(:Prospecto_id, :Usuario_id, :estatus)
    end
end
