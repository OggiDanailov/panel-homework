class DropCohortFromStudents < ActiveRecord::Migration[5.2]
  def change
  	remove_column :students, :cohort_id, :integer
  end
end
