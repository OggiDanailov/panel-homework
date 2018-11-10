class CoursesController < ApplicationController

	  before_action :authenticate_admin!, :except => [:index, :show]

	def current_course
		@course = Course.find(params[:id])
	end

	def index
		@courses = Course.all
	end

	def new 
		@course = Course.new
	end

	def create
		course = Course.new(course_params)
		if course.save
			redirect_to "/courses"
		else 
			render "/courses/new"
		end
	end

	def show
		current_course
	end

	def edit
		current_course
	end

	def update
		course = current_course
		if course.update(course_params)
			redirect_to "/courses/#{course.id}"
		else
			render "/courses/#{course}/edit"
		end
	end

	def destroy
		course = current_course
		course.destroy
			redirect_to "/courses"
	end




	private

	def course_params
		params.require(:course).permit(:name, :total)
	end
end
