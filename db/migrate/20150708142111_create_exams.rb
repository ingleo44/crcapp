class CreateExams < ActiveRecord::Migration
  def up
    
  drop_table :exams, if_exists: true
    create_table :exams do |t|
      t.integer :paciente_id
      t.datetime :date
      t.string :status

      t.timestamps null: false
    end
    add_index :exams , :paciente_id
  end
  
  def down
    drop_table :exams
  end
end
