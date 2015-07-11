class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :state_id
      t.string :name

      t.timestamps null: false
    end
    add_index :cities , :state_id
  end
end
