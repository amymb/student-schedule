require 'rails_helper'

describe Student do
  describe "validations" do
    it 'validates student with first_name, last_name' do
      student = Student.create!(first_name: "Louis", last_name: "Pasteur")
      expect(student).to be_valid
    end

    it 'finds a student without first_name, last_name invalid' do
      student = Student.create(first_name: "", last_name: "")
      expect(student).to be_invalid
      expect(student.errors[:first_name]).to include("can't be blank")
      expect(student.errors[:last_name]).to include("can't be blank")
    end
  end

  describe "associations" do
    it "returns all associated schedules" do
        student = create_student
        course_section = create_course_section
        schedule = Schedule.create!(student_id: student.id, course_section_id: course_section.id)

        expect(student.course_sections).to eq [course_section]
      end
    end

    describe "#course_sections" do
      it "return all course sections with associated schedules" do
        student = create_student
        course_section = create_course_section
        schedule = Schedule.create!(student_id: student.id, course_section_id: course_section.id)

        expect(student.course_sections).to eq [course_section]
      end
    end

end
