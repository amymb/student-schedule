class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :student_id
      t.integer :course_section_id
    end
  end
end
