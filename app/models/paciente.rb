class Paciente < ActiveRecord::Base
  has_many :exams
  
  validates_presence_of :firstname
  validates_presence_of :lastname
  validates_presence_of :address
  validates_presence_of :phone
  validates_presence_of :sexo
  validates_uniqueness_of :cedula
  validates_presence_of :cedula
    def name_with_initial
    "#{firstname} #{lastname}"
  end
end
