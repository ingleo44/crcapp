class ExoptosController < ApplicationController
  before_action :set_exopto, only: [:show, :edit, :update, :destroy]
 before_action :get_exam
  before_action :get_paciente
  
  
 
  # GET /exoptos
  # GET /exoptos.json
  def index
    @exoptos = Exopto.all
  end

  # GET /exoptos/1
  # GET /exoptos/1.json
  def show
    @exoptos = Exopto.find(params[:id])
  end

  # GET /exoptos/new
  def new
    @exopto = Exopto.new
  end

  # GET /exoptos/1/edit
  def edit
  end

   def get_exam
    @exam = Exam.find(params[:exam_id])
  end
  
  def get_paciente
    @paciente = Paciente.find(params[:paciente_id])
  end
  
  
  # POST /exoptos
  # POST /exoptos.json
  def create
    @exopto = Exopto.new(exopto_params)

    respond_to do |format|
      if @exopto.save
        format.html { redirect_to paciente_exam_exopto_path(@paciente,@exam,@exopto), notice: 'Exopto was successfully created.' }
        format.json { render :show, status: :created, location: paciente_exam_exopto_path(@paciente,@exam,@exopto) }
      else
        format.html { render :new }
        format.json { render json: @exopto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exoptos/1
  # PATCH/PUT /exoptos/1.json
  def update
    respond_to do |format|
      if @exopto.update(exopto_params)
        format.html { redirect_to paciente_exam_exopto_path(@paciente,@exam,@exopto), notice: 'Exopto was successfully updated.' }
        format.json { render :show, status: :ok, location: paciente_exam_exopto_path(@paciente,@exam,@exopto) }
      else
        format.html { render :edit }
        format.json { render json: @exopto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exoptos/1
  # DELETE /exoptos/1.json
  def destroy
    @exopto.destroy
    respond_to do |format|
      format.html { redirect_to exoptos_url, notice: 'Exopto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exopto
      @exopto = Exopto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exopto_params
      params.require(:exopto).permit(:exam_id, :status, :optq01, :optq02, :optq03, :optq04, :optq05, :optq06, :optq07, :optq08, :optq09, :optq10, :optq11, :optq12, :optq13, :optq14, :optq15, :optq16)
    end
end
