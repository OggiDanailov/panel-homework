class InstructorsController < ApplicationController
  def index
  end

  def show
  	@instructor = Instructor.find(params[:id])
  	@cohort = Cohort.new
  end

end
