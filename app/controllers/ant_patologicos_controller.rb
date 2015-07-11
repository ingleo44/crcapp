class AntPatologicosController < ApplicationController
  before_action :set_ant_patologico, only: [:show, :edit, :update, :destroy]

  # GET /ant_patologicos
  # GET /ant_patologicos.json
  def index
    @ant_patologicos = AntPatologico.all
  end

  # GET /ant_patologicos/1
  # GET /ant_patologicos/1.json
  def show
  end

  # GET /ant_patologicos/new
  def new
    @ant_patologico = AntPatologico.new
  end

  # GET /ant_patologicos/1/edit
  def edit
  end

  # POST /ant_patologicos
  # POST /ant_patologicos.json
  def create
    @ant_patologico = AntPatologico.new(ant_patologico_params)

    respond_to do |format|
      if @ant_patologico.save
        format.html { redirect_to @ant_patologico, notice: 'Ant patologico was successfully created.' }
        format.json { render :show, status: :created, location: @ant_patologico }
      else
        format.html { render :new }
        format.json { render json: @ant_patologico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ant_patologicos/1
  # PATCH/PUT /ant_patologicos/1.json
  def update
    respond_to do |format|
      if @ant_patologico.update(ant_patologico_params)
        format.html { redirect_to @ant_patologico, notice: 'Ant patologico was successfully updated.' }
        format.json { render :show, status: :ok, location: @ant_patologico }
      else
        format.html { render :edit }
        format.json { render json: @ant_patologico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ant_patologicos/1
  # DELETE /ant_patologicos/1.json
  def destroy
    @ant_patologico.destroy
    respond_to do |format|
      format.html { redirect_to ant_patologicos_url, notice: 'Ant patologico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ant_patologico
      @ant_patologico = AntPatologico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ant_patologico_params
      params.require(:ant_patologico).permit(:name)
    end
end
