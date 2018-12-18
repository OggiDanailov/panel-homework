class InstructorsController < ApplicationController
  def index
  	@instructors = Instructor.all
  end

  def show
  	@instructor = Instructor.find(params[:id])
  	@cohort = Cohort.new
  	@article = Article.new
  	@days = ["Sunday","Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
  end

end
