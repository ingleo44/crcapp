class Exfono < ActiveRecord::Base
  belongs_to :exam
  before_create :set_defaultvalue
  
  def set_defaultvalue
    self.status = "PENDT"
  end
end
