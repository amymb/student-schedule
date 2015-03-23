class Student < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  has_one :schedule
  has_many :course_sections, through: :schedule
end
