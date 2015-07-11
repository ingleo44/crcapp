class CreateExamsTable < ActiveRecord::Migration
  def change
  
    create_table :exams do |t|
      t.integer :paciente_id
      t.datetime :date
      t.string :status

      t.timestamps null: false
    end
       
    add_index :exams , :paciente_id
  end
end
