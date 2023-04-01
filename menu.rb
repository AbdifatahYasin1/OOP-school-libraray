require './app'

class Menu
  def initialize(app)
    @app = app
  end

  def display_menu
    puts 'Please select an option by entering its respective number'
    list = {
      1 => 'List all books',
      2 => 'List all people',
      3 => 'Create a person',
      4 => 'Create a book',
      5 => 'Create a rental',
      6 => 'List all rentals for a given person id',
      7 => 'Exit'
    }

    list.each do |key, value|
      puts "#{key}. #{value}"
    end
  end

  def run
    display_menu
    input = gets.chomp.to_i
    case input
    when 1 then @app.list_books
    when 2 then @app.list_people
    when 3 then @app.create_person
    when 4 then @app.create_book
    when 5 then @app.create_rental
    when 6 then @app.list_rentals
    when 7 then exit
    else
      puts 'Please enter a valid option'
    end
    run
  end
end
