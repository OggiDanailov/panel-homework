class InstructorsController < ApplicationController
  def index
  end

  def show
  	@instructor = Instructor.find(params[:id])
  end

end
