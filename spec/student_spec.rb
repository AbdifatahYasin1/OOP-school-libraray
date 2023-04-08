require_relative '../student'

describe Student do
  #  write the tests here
  let(:student) { Student.new(name: 'John', age: 17, parent_permission: true, classroom: 'Math') }

  describe '#initialize' do
    it 'Creates a new student' do
      expect(student).to be_an_instance_of(Student)
    end

    it 'Creates a new student with a name' do
      expect(student.name).to eq('John')
    end

    it 'Creates a new student with an age' do
      expect(student.age).to eq(17)
    end

    it 'Creates a new student with a classroom' do
      expect(student.classroom).to eq('Math')
    end
  end
end
