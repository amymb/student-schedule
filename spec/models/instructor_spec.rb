require 'rails_helper'
describe Instructor do
  describe 'validations' do
    it 'validates an instructor with first name, last name, and department' do
      instructor = Instructor.create!(first_name: "Kurt", last_name: "Vonnegut", department: "Anthropology")
      expect(instructor).to be_valid
    end

    it 'an instructor without first name, last name, or department is invalid' do
      instructor = Instructor.create(first_name: nil, last_name: nil, department: nil)
      instructor.valid?
      expect(instructor.errors[:first_name]).to include("can't be blank")
      expect(instructor.errors[:last_name]).to include("can't be blank")
      expect(instructor.errors[:department]).to include("can't be blank")
    end

    it 'an instructor in an non-existent department is invalid' do
      instructor = Instructor.create(first_name: "Peter", last_name: "Pan", department: "Lost Boys")
      expect(instructor.errors[:department]).to include("Lost Boys is not a valid department")
    end
  end

    describe 'associations' do
      it 'returns all associated course_sections' do
        instructor = Instructor.create!(first_name: "Bob", last_name: "Hope", department: "Math")
        course_section = CourseSection.create!(course_id: create_course.id, instructor_id: instructor.id, day: "TR", time: "10-11")
        expect(instructor.course_sections).to eq [course_section]
      end
    end

  end
