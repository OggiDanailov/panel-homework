class AddFnameToInstructors < ActiveRecord::Migration[5.2]
  def change
  	add_column :instructors, :fname, :string
  end
end
