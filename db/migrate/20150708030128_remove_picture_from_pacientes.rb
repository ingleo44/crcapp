class RemovePictureFromPacientes < ActiveRecord::Migration
  def up
    remove_column :pacientes, :Picture, :binary
  end
  
  def down
    add_column :pacientes, :picture, :binary
  end
end
