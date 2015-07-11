class ExpsicosController < ApplicationController
  before_action :set_expsico, only: [:show, :edit, :update, :destroy]
  before_action :get_exam
  before_action :get_paciente

  # GET /expsicos
  # GET /expsicos.json
  def index
    @expsicos = Expsico.all
  end

  # GET /expsicos/1
  # GET /expsicos/1.json
  def show
    @expsicos = Expsico.find(params[:id])
  end

  # GET /expsicos/new
  def new
    @expsico = Expsico.new
  end

  # GET /expsicos/1/edit
  def edit
  end

  
  def get_exam
    @exam = Exam.find(params[:exam_id])
  end
  
  def get_paciente
    @paciente = Paciente.find(params[:paciente_id])
  end
  
  # POST /expsicos
  # POST /expsicos.json
  def create
    @expsico = Expsico.new(expsico_params)

    respond_to do |format|
      if @expsico.save
        format.html { redirect_to paciente_exam_expsico_path(@paciente,@exam,@expsico), notice: 'Expsico was successfully created.' }
        format.json { render :show, status: :created, location: paciente_exam_expsico_path(@paciente,@exam,@expsico) }
      else
        format.html { render :new }
        format.json { render json: @expsico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expsicos/1
  # PATCH/PUT /expsicos/1.json
  def update
    respond_to do |format|
      if @expsico.update(expsico_params)
        format.html { redirect_to paciente_exam_expsico_path(@paciente,@exam,@expsico), notice: 'Expsico was successfully updated.' }
        format.json { render :show, status: :ok, location: paciente_exam_expsico_path(@paciente,@exam,@expsico) }
      else
        format.html { render :edit }
        format.json { render json: @expsico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expsicos/1
  # DELETE /expsicos/1.json
  def destroy
    @expsico.destroy
    respond_to do |format|
      format.html { redirect_to expsicos_url, notice: 'Expsico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expsico
      @expsico = Expsico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expsico_params
      params.require(:expsico).permit(:exam_id, :status, :psiq01, :psiq02, :psiq03, :psiq04, :psiq05, :psiq06, :psiq07, :psiq08, :psiq09, :psiq10, :psiq11, :psiq12, :psiq13, :psiq14, :psiq15, :psiq16, :psiq17, :psiq18, :psiq19, :psiq20, :psiq21)
    end
end
