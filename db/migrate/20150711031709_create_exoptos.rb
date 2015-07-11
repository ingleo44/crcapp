class CreateExoptos < ActiveRecord::Migration
  def up
    create_table :exoptos do |t|
      t.integer :exam_id
      t.string :status
      t.integer :optq01
      t.integer :optq02
      t.integer :optq03
      t.integer :optq04
      t.integer :optq05
      t.integer :optq06
      t.integer :optq07
      t.integer :optq08
      t.integer :optq09
      t.integer :optq10
      t.integer :optq11
      t.integer :optq12
      t.integer :optq13
      t.integer :optq14
      t.integer :optq15
      t.integer :optq16

      t.timestamps null: false
    end
    add_index :exoptos, :exam_id
  end
  
  def down
    drop_table :exoptos
  end
  
end
