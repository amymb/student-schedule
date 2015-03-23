class CreateCourse < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :department
    end
  end
end
