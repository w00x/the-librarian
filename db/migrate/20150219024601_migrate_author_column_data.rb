class MigrateAuthorColumnData < ActiveRecord::Migration
  def change
  	Book.find_each do |book|
		author = Author.where(author: book.author)
		if author.size > 0
  			book.authors << author[0]
  		else
  			author = Author.new
  			author.author = book.author
  			author.save
        	book.authors << author
        end
  		book.save
    end
  end
end
