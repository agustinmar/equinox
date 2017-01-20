class CaballosController < ApplicationController
  before_action :set_caballo, only: [:show, :edit, :update, :destroy]

  # GET /caballos
  # GET /caballos.json
  def index
    @caballos = Caballo.order("nombre ASC")
    @texto = params[:texto]
    if @texto
      @caballos = Caballo.where("lower(nombre) LIKE ?", "%#{@texto.downcase}%")
    else
      @caballos = Caballo.all
    end
  end

  # GET /caballos/1
  # GET /caballos/1.json
  def show
  end

  # GET /caballos/new
  def new
    @caballo = Caballo.new
  end

  # GET /caballos/1/edit
  def edit
  end

  # POST /caballos
  # POST /caballos.json
  def create
    @caballo = Caballo.new(caballo_params)

    respond_to do |format|
      if @caballo.save
        format.html { redirect_to @caballo, notice: 'Datos guardados exitosamente' }
        format.json { render :show, status: :created, location: @caballo }
      else
        format.html { render :new }
        format.json { render json: @caballo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caballos/1
  # PATCH/PUT /caballos/1.json
  def update
    respond_to do |format|
      if @caballo.update(caballo_params)
        format.html { redirect_to @caballo, notice: 'Datos actualizados' }
        format.json { render :show, status: :ok, location: @caballo }
      else
        format.html { render :edit }
        format.json { render json: @caballo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caballos/1
  # DELETE /caballos/1.json
  def destroy
    @caballo.destroy
    respond_to do |format|
      format.html { redirect_to caballos_url, notice: 'Datos eliminados' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caballo
      @caballo = Caballo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caballo_params
      params.require(:caballo).permit(:nombre, :padre, :madre, :fechanac, :lugarnac, :sexo, :color, :peso, :alzada, :propietario, :convenio, :defuncion)
    end
end
