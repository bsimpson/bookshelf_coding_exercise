# encoding: ISO-8859-1
require 'csv'

books = File.read(Rails.root.join('db/BX-Books.csv'), encoding: "ISO-8859-1").encode("ISO-8859-1").gsub(/\\"/,'""')
CSV.parse(books, headers: true, col_sep: ';', encoding: "ISO8859-1") do |row|
  # t.string :title
  # t.belongs_to :author
  # t.belongs_to :publisher
  # t.integer :published
  # t.string :image_url

  # "ISBN";"Book-Title";"Book-Author";"Year-Of-Publication";"Publisher";"Image-URL-S";"Image-URL-M";"Image-URL-L"
  book = Book.new(title: row['Book-Title'], published: row['Year-Of-Publication'], image_url: row['Image-URL-L'], rating: (1...5).to_a.sample)
  book.author = Author.find_or_create_by(name: row['Book-Author'])
  book.publisher = Publisher.find_or_create_by(name: row['Publisher'])
  book.save
end

# From http://www2.informatik.uni-freiburg.de/~cziegler/BX/