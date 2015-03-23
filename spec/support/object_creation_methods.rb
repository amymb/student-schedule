def create_student
  Student.create!(first_name: "Carl", last_name: "Sagan", major: "Physics")
end

def create_instructor
  Instructor.create!(first_name: "Toni", last_name: "Morrison", department: "Literature")
end

def create_course
  Course.create!(title: "The penny", department: "Economics")
end

def create_course_section
  CourseSection.create!(course_id: create_course.id ,instructor_id: create_instructor.id, day: "MW", time: "1-2")
end

def create_schedule
  Schedule.create!(student_id: create_student.id, course_section: course_section.id)
end
