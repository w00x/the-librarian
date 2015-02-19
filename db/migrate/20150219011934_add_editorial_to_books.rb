class AddEditorialToBooks < ActiveRecord::Migration
  def change
  	rename_column :books, :editorial, :editorial_tmp
    add_reference :books, :editorial, index: true, uniq: true
  end
end
