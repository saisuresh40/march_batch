class Notifier < ApplicationMailer
	def send_email_to_admin(book_details)
		@book_name = book_details.title
		@book_author = book_details.author
		mail(:to=>"saisuresh40@gmail.com",:subject=>"New Book has been added") 
end
end