class CreateExmedicos < ActiveRecord::Migration
  def change
    create_table :exmedicos do |t|
      t.integer :exam_id
      t.boolean :medAP01
      t.boolean :medAP02
      t.boolean :medAP03
      t.boolean :medAP04
      t.boolean :medAP05
      t.boolean :medAP06
      t.boolean :medAP07
      t.boolean :medAP08
      t.boolean :medAP09
      t.boolean :medAP10
      t.boolean :medAP11
      t.boolean :medAP12
      t.boolean :medAP13
      t.boolean :medAP14
      t.boolean :medAP15
      t.boolean :medAP16
      t.boolean :medAP17
      t.boolean :medAP018
      t.text :medq01
      t.boolean :medAF01
      t.boolean :medAF02
      t.boolean :medAF03
      t.boolean :medAF04
      t.boolean :medAF05
      t.boolean :medAF06
      t.boolean :medAF07
      t.boolean :medAF08
      t.boolean :medAF09
      t.boolean :medAF10
      t.boolean :medAF11
      t.boolean :medAF12
      t.boolean :medAF13
      t.boolean :medAF14
      t.boolean :medAF15
      t.boolean :medAF16
      t.boolean :medAF17
      t.boolean :medAF018
      t.text :medq02
      t.integer :medq03
      t.integer :medq04
      t.integer :medq05
      t.integer :medq06
      t.integer :medq07
      t.integer :medq08
      t.integer :medq09
      t.date :medq10
      t.date :medq11
      t.string :medq12
      t.string :medq13
      t.string :medq14
      t.string :medq15
      t.string :medq16
      t.string :medq17
      t.string :medq18
      t.string :medq19
      t.string :medq20
      t.integer :medq21
      t.decimal :medq22
      t.integer :medq23
      t.integer :medq24
      t.integer :medq25
      t.decimal :medq26
      t.decimal :medq27
      t.string :medq28
      t.text :medq29
      t.date :medq30
      t.text :medq31
      t.date :medq32
      t.text :medq33
      t.text :medq34
      t.string :medq35

      t.timestamps null: false
    end
    add_index :exmedicos , :exam_id
  end
end
