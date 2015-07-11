class CreateExpsicos < ActiveRecord::Migration
  def up
    create_table :expsicos do |t|
      t.integer :exam_id
      t.string :status
      t.integer :psiq01
      t.integer :psiq02
      t.integer :psiq03
      t.integer :psiq04
      t.integer :psiq05
      t.string :psiq06
      t.string :psiq07
      t.string :psiq08
      t.integer :psiq09
      t.string :psiq10
      t.string :psiq11
      t.string :psiq12
      t.integer :psiq13
      t.integer :psiq14
      t.integer :psiq15
      t.integer :psiq16
      t.integer :psiq17
      t.integer :psiq18
      t.integer :psiq19
      t.integer :psiq20
      t.integer :psiq21

      t.timestamps null: false
    end
    add_index :expsicos, :exam_id
  end
  def down
    drop_table :expsicos
  end
  
end
