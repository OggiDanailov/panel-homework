class InstructorsController < ApplicationController
  def index
  	@instructors = Instructor.all
  end

  def show
  	@instructor = Instructor.find(params[:id])
  	@cohort = Cohort.new
  end

end
