class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre

  # This is a class constant, which is shared among all instances.
  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

 # This will add the different genres to the empty array to keep track of
  def genre=(genre)
    @genre = genre
    GENRES << genre
  end

end


# name spacing
# When you see Book::GENRES in an error message, this is called name spacing!
# This means that the thing on the right side of the colons is a thing defined
# within the context of the thing on the left side of the colons.
# Therefore there is a GENRE constant inside the Book class!


# If we look in rspec you will see:
# describe 'GENRES' do
#   it 'keeps track of all genres' do
#     genres = ["Thriller", "Science Fiction", "Romance"]
#     genres.each_with_index do |genre, i|
#       book = Book.new("Book_#{i}")
#       book.genre = genre
#     end
#
#     genres.each do |genre|
#       expect(Book::GENRES).to include(genre)
#     end
#   end
# end

# This means....
# The test is creating a bunch of books.
# The test is assigning each of those books a genre.
# The test is expecting our GENRES class constant to keep track of those genres
