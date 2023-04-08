class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book

    person.rentals << self
    book.rentals << self
  end

  def to_h
    {
      date: @date,
      person: @person.to_h,
      book: @book.to_h
    }
  end
end
