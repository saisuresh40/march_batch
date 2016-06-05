class Book < ActiveRecord::Base
	self.per_page = 2

	before_save :merge_book_title_with_author

	def merge_book_title_with_author
		self.title = self.title+ "by" +self.author
	end
end
