require_relative '../person'

describe Person do
  it 'should create instance of the person class with 3 parameters' do
    person = Person.new(age: 18, name: 'Ali')
    expect(person).to be_an_instance_of Person
  end




  describe 'should return the correct name' do
    it 'should return the correct name' do
      person = Person.new(name: 'Ali', age: 20)
      expect(person.correct_name).to eq 'Ali'
    end



    describe 'should return true if the person is of age or has permission' do
      it 'should return true if the person is of age' do
        person = Person.new(name: 'Ali', age: 20)
        expect(person.can_use_services?).to eq true
      end

      it 'should return true if the person has permission' do
        person = Person.new(name: 'Ali', age: 15, parent_permission: true)
        expect(person.can_use_services?).to eq true
      end
    end
  end
end
