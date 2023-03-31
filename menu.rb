require './app'

class Menu
  def initialize(app)
    @app = app
  end

  def display_menu
    puts ' Please select an option:'
    puts ' 1 - List all books'
    puts ' 2 - List all people'
    puts ' 3 - Create a person'
    puts ' 4 - Create a book'
    puts ' 5 - Create a rental'
    puts ' 6 - List all rentals for a given person id'
    puts ' 7 - Exit'
  end

    def run
        loop do
            display_menu
            input = gets.chomp.to_i
            case input
            when 1 then @app.list_books
            when 2 then @app.list_people
            when 3 then @app.create_person
            when 4 then @app.create_book
            when 5 then @app.create_rental
            when 6 then @app.list_rentals
            when 7 then break
            else
            puts 'Please select a valid option'
            end
        end
        end
end
