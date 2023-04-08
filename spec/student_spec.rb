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

    describe '#play_hooky' do
      it 'should show play_hooky symbol' do
        student = Student.new(classroom: 6, age: 13, parent_permission: 'Yes', name: 'Mark')
        expect(student.play_hooky).to eq '¯\(ツ)/¯'
      end
    end
  end

  describe '#classroom=' do
    let(:classroom) { Classroom.new('Classroom A') }
    let(:student) { Student.new(classroom: classroom, age: 10) }

    context 'when setting the classroom' do
      before { student.classroom = classroom }

      it 'sets the classroom instance variable' do
        expect(student.instance_variable_get(:@classroom)).to eq(classroom)
      end

      it "adds the student to the classroom's list of students" do
        expect(classroom.students).to include(student)
      end

      it "does not add the student to the classroom's list of students if they are already included" do
        student.classroom = classroom
        expect(classroom.students.count(student)).to eq(1)
      end
    end
  end
end
