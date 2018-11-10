class CohortsController < ApplicationController

	before_action :authenticate_instructor!, :except => [:index, :show]
	
	def index
		@cohorts = Cohort.all? 
	end

	def new
		@cohort = Cohort.new
	end

	def create
		
	end







	private

	def cohort_params
		params.require(:cohort).permit(:name, :instructor_id, :course_id)
	end
end
