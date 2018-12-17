class AddDateAndTimeColumnsToCohorts < ActiveRecord::Migration[5.2]
  def change
  	add_column :cohorts, :starting_date, :date 
  	add_column :cohorts, :closing_date, :date 
  	add_column :cohorts, :starting_hour, :time 
  	add_column :cohorts, :closing_hour, :time 

  end
end
