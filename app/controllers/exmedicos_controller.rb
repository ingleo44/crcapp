class ExmedicosController < ApplicationController
  before_action :set_exmedico, only: [:show, :edit, :update, :destroy]
before_action :get_exam
  before_action :get_paciente
  

  # GET /exmedicos
  # GET /exmedicos.json
  def index
    @exmedicos = Exmedico.all
  end

  # GET /exmedicos/1
  # GET /exmedicos/1.json
  def show
    @exmedicos = Exmedico.find(params[:id])
  end

  # GET /exmedicos/new
  def new
    @exmedico = Exmedico.new
  end

  # GET /exmedicos/1/edit
  def edit
  end

  def get_exam
    @exam = Exam.find(params[:exam_id])
  end
  
  def get_paciente
    @paciente = Paciente.find(params[:paciente_id])
  end
  
  
  # POST /exmedicos
  # POST /exmedicos.json
  def create
    @exmedico = @paciente.exams.exmedico.new(params[:exmedico])
   # @exmedico.exam_id = @exam.id
    

   
      if @exmedico.save
       redirect_to [@paciente, @exam, @exmedico]
      else
        render action: "new"
      end
    
  end

  # PATCH/PUT /exmedicos/1
  # PATCH/PUT /exmedicos/1.json
  def update
    respond_to do |format|
      if @exmedico.update(exmedico_params)
        format.html { redirect_to paciente_exam_exmedico_path(@paciente,@exam,@exmedico), notice: 'Exmedico was successfully updated.' }
        format.json { render :show, status: :ok, location: paciente_exam_exmedico_path(@paciente,@exam,@exmedico) }
      else
        format.html { render :edit }
        format.json { render json: @exmedico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exmedicos/1
  # DELETE /exmedicos/1.json
  def destroy
    @exmedico.destroy
    respond_to do |format|
      format.html { redirect_to exmedicos_url, notice: 'Exmedico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exmedico
      @exmedico = Exmedico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exmedico_params
      params.require(:exmedico).permit(:exam_id, :medAP01, :medAP02, :medAP03, :medAP04, :medAP05, :medAP06, :medAP07, :medAP08, :medAP09, :medAP10, :medAP11, :medAP12, :medAP13, :medAP14, :medAP15, :medAP16, :medAP17, :medAP018, :medq01, :medAF01, :medAF02, :medAF03, :medAF04, :medAF05, :medAF06, :medAF07, :medAF08, :medAF09, :medAF10, :medAF11, :medAF12, :medAF13, :medAF14, :medAF15, :medAF16, :medAF17, :medAF018, :medq02, :medq03, :medq04, :medq05, :medq06, :medq07, :medq08, :medq09, :medq10, :medq11, :medq12, :medq13, :medq14, :medq15, :medq16, :medq17, :medq18, :medq19, :medq20, :medq21, :medq22, :medq23, :medq24, :medq25, :medq26, :medq27, :medq28, :medq29, :medq30, :medq31, :medq32, :medq33, :medq34, :medq35)
    end
end
