require_relative '../book'

describe Book do
  it 'should create instance of the book class with 2 parameters' do
    book = Book.new('Title', 'Author')
    expect(book).to be_an_instance_of Book
  end
end

describe '#title' do
  it 'should return the title' do
    book = Book.new('My Title', 'My Author')
    expect(book.title).to eq('My Title')
  end
end

# Test for author
describe '#author' do
  it 'should return the author' do
    book = Book.new('My Title', 'My Author')
    expect(book.author).to eq('My Author')
  end

  # Test for add_rental
  describe '#add_rental' do
    it 'should add the rental to rental array' do
      book = Book.new('Hello world', 'Joe Ray')
      person = Person.new(name: 'Hello world', age: 37, parent_permission: true)
      rental_date = '2022-11-11'

      expect do
        book.add_rental(rental_date, person)
      end.to change { book.rentals.length }.by(1)

      expect(book.rentals.last[:date]).to eq(rental_date)
      expect(book.rentals.last[:book]).to eq(book.to_h)
      expect(book.rentals.last[:person]).to eq(person.to_h)
    end
  end

  # Test for to_h
  describe Book do
    let(:book) { Book.new('Billy colloo', 'Willie Cee') }

    describe '#to_h' do
      it 'returns a hash representation of the book' do
        expected_hash = { title: 'Billy colloo', author: 'Willie Cee', rentals: [] }
        expect(book.to_h).to eq(expected_hash)
      end
    end
  end
end
