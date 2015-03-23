class Schedule < ActiveRecord::Base
  belongs_to :student
  belongs_to :course_section
end
