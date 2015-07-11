class CreateExfonos < ActiveRecord::Migration
  def up
    create_table :exfonos do |t|
      t.integer :exam_id
      t.string :status
      t.integer :fonq01
      t.integer :fonq02
      t.integer :fonq03
      t.integer :fonq04
      t.integer :fonq05
      t.integer :fonq06
      t.integer :fonq07
      t.integer :fonq08
      t.integer :fonq09
      t.integer :fonq10
      t.integer :fonq11
      t.integer :fonq12
      t.integer :fonq13
      t.integer :fonq14
      t.integer :fonq15
      t.integer :fonq16
      t.integer :fonq17

      t.timestamps null: false
    end
    add_index :exfonos, :exam_id
  end
  
  def down
    drop_table :exfonos
  end
  
end
