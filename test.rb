require_relative './capitalize_decorator.rb'
require_relative './trimmer_decorator.rb'
require_relative './person.rb'

person = Person.new(age: 22, name: 'maximilianus')
p person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
p capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimDecorator.new(capitalizedPerson)
p capitalizedTrimmedPerson.correct_name