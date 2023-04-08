# test the above class

require_relative '../teacher'
describe Teacher do
  let(:teacher) { Teacher.new(name: 'John', age: 17, parent_permission: true, specialization: 'Math') }

  describe '#initialize' do
    it 'Creates a new teacher' do
      expect(teacher).to be_an_instance_of(Teacher)
    end

    it 'Creates a new teacher with a name' do
      expect(teacher.name).to eq('John')
    end

    it 'Creates a new teacher with an age' do
      expect(teacher.age).to eq(17)
    end

    it 'Creates a new teacher with a specialization' do
      expect(teacher.specialization).to eq('Math')
    end
  end
end
