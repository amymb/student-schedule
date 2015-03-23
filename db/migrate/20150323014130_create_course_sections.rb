class CreateCourseSections < ActiveRecord::Migration
  def change
    create_table :course_sections do |t|
      t.integer :course_id
      t.integer :instructor_id
      t.string :day
      t.string :time
    end
  end
end
