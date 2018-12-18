class AddDaysToCohorts < ActiveRecord::Migration[5.2]
  def change
  	add_column :cohorts, :days, :string
  end
end
