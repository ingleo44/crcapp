class Exam < ActiveRecord::Base
  validates_presence_of :paciente_id
  belongs_to :paciente
  has_one :exmedico
  has_one :exfono
  has_one :exopto
  has_one :expsico
  before_create :set_defaultvalues
    before_create :build_default_exams
  
  
  
  def set_defaultvalues
    self.status = "PENDT"
  end
  
  
  
    private
def build_default_exams
  # build default profile instance. Will use default params.
  # The foreign key to the owning User model is set automatically
  build_exmedico
  build_exfono
  build_exopto
  build_expsico
  true # Always return true in callbacks as the normal 'continue' state
       # Assumes that the default_profile can **always** be created.
       # or
       # Check the validation of the profile. If it is not valid, then
       # return false from the callback. Best to use a before_validation 
       # if doing this. View code should check the errors of the child.
       # Or add the child's errors to the User model's error array of the :base
       # error item
end
  
  
end