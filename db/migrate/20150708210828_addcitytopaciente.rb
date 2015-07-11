class Addcitytopaciente < ActiveRecord::Migration
  def up
    add_column :pacientes, :city , :integer
  end
  def down
    remove_column :pacientes, :city, :integer
  end
end
