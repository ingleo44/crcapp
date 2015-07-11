class DropExamstable < ActiveRecord::Migration
  def change
    drop_table :exams
  end
end
