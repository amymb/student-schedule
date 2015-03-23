class Instructor < ActiveRecord::Base
  has_many :course_sections
  validates :first_name, :last_name, :department, presence: true
  validates :department, inclusion: {in: %w(Anthropology Literature Physics Math), message: "%{value} is not a valid department"}
end
