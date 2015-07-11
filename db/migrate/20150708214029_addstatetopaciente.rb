class Addstatetopaciente < ActiveRecord::Migration
  def up
    add_column :pacientes, :state , :integer
  end
  def down
    remove_column :pacientes, :state , :integer
  end
end
