class CohortsController < ApplicationController
	
	before_action :authenticate_instructor!, :except => [:index, :show]
	def index
		@cohorts = Cohort.all
	end

	def new
		@cohort = Cohort.new
	end

	def create
		puts current_instructor
		puts "read here #{cohort_params}"
		c = Cohort.new(cohort_params)
		c.instructor_id = current_instructor.id
		if c.save
			redirect_to "/cohorts"
		else 
			render "/instructor/#{current_instructor.id}"
		end
	end

	def show
		@cohort = Cohort.find(params[:id])
	end









	private

	def cohort_params
		params.require(:cohort).permit(:name, :instructor_id, :course_id)
	end
end
