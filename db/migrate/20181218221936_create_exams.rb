class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.integer :instructor_id
      t.integer :student_id
      t.integer :grade
      t.integer :cohort_id

      t.timestamps
    end
  end
end
