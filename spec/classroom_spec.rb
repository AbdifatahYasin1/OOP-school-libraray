require './classroom'
require './student'

describe Classroom do
  # write the test here
  it 'should have a label' do
    classroom = Classroom.new('Math')
    classroom.label.should == 'Math'
  end
end
