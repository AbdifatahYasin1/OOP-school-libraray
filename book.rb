class Book
  attr_accessor :title, :author, :rentals

  def initialize(date, book, person)
    @date = date
    @book = book
    book << self
    @person = person
    person << self
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end
end
