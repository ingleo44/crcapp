class AddCedulaandSexotoPacientes < ActiveRecord::Migration
  def up
    add_column :pacientes , :cedula , :string
    add_column :pacientes , :sexo , :string
  end
  
  def down
    remove_column :pacientes , :cedula , :string
    remove_column :pacientes , :sexo , :string
  end
  
end
