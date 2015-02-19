class MigrateEditorialColumnData < ActiveRecord::Migration
  def change
  	Book.find_each do |book|
		editorial = Editorial.where(editorial: book.editorial_tmp)
		if editorial.size > 0
  			book.editorial = editorial[0]
  		else
  			editorial = Editorial.new
  			editorial.editorial = book.editorial_tmp
  			editorial.save
        	book.editorial = editorial
        end
  		book.save
    end
  end
end
