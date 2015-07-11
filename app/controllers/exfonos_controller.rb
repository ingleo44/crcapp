class ExfonosController < ApplicationController
  before_action :set_exfono, only: [:show, :edit, :update, :destroy]
  before_action :get_exam
  before_action :get_paciente


  # GET /exfonos
  # GET /exfonos.json
  def index
    @exfonos = Exfono.all
  end

  # GET /exfonos/1
  # GET /exfonos/1.json
  def show
    @exfono = Exfono.find(params[:id])
  end

  # GET /exfonos/new
  def new
    @exfono = Exfono.new
  end

  # GET /exfonos/1/edit
  def edit
  end

  def get_exam
    @exam = Exam.find(params[:exam_id])
  end
  
  def get_paciente
    @paciente = Paciente.find(params[:paciente_id])
  end
  
  # POST /exfonos
  # POST /exfonos.json
  def create
    @exfono = Exfono.new(exfono_params)

    respond_to do |format|
      if @exfono.save
        format.html { redirect_to paciente_exam_exfono_path(@paciente,@exam,@exfono) , notice: 'Exfono was successfully created.' }
        format.json { render :show, status: :created, location: paciente_exam_exfono_path(@paciente,@exam,@exfono) }
      else
        format.html { render :new }
        format.json { render json: @exfono.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exfonos/1
  # PATCH/PUT /exfonos/1.json
  def update
    respond_to do |format|
      if @exfono.update(exfono_params)
        format.html { redirect_to paciente_exam_exfono_path(@paciente,@exam,@exfono), notice: 'Exfono was successfully updated.' }
        format.json { render :show, status: :ok, location: paciente_exam_exfono_path(@paciente,@exam,@exfono) }
      else
        format.html { render :edit }
        format.json { render json: @exfono.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exfonos/1
  # DELETE /exfonos/1.json
  def destroy
    @exfono.destroy
    respond_to do |format|
      format.html { redirect_to exfonos_url, notice: 'Exfono was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exfono
      @exfono = Exfono.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exfono_params
      params.require(:exfono).permit(:exam_id, :status, :fonq01, :fonq02, :fonq03, :fonq04, :fonq05, :fonq06, :fonq07, :fonq08, :fonq09, :fonq10, :fonq11, :fonq12, :fonq13, :fonq14, :fonq15, :fonq16, :fonq17)
    end
end
