class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :firstname
      t.string :lastname
      t.text :address
      t.string :phone
      t.string :mobile
      t.date :birthdate
      t.string :civilstatus
      t.binary :picture

      t.timestamps null: false
    end
  end
end
