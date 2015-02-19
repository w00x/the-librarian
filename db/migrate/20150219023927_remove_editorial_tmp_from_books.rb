class RemoveEditorialTmpFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :editorial_tmp, :string
  end
end
