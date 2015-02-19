class AlterEditorialIndex < ActiveRecord::Migration
  def change
  	remove_column :books, :editorial_id
  	add_reference :books, :editorial, index: true
  end
end
