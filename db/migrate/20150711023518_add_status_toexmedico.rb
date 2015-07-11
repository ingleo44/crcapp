class AddStatusToexmedico < ActiveRecord::Migration
  def up
    add_column :exmedicos, :status, :string
  end
  def down
    remove_column :exmedicos, :status, :string
  end
  
end
