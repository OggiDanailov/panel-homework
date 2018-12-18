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


	def edit
		@cohort = Cohort.find(params[:id])
	end

	def update
		@cohort = Cohort.find(params[:id])
	    if @cohort.update(cohort_params)
	      redirect_to "/cohorts/#{@cohort.id}"
	    else
	      render "/cohorts/#{@cohort.id}/edit"
	    end
	end


	def destroy
		@cohort = Cohort.find(params[:id])
		@cohort.destroy
		redirect_to "/cohorts"
	end	


	private

	def cohort_params
		params.require(:cohort).permit(:name, :instructor_id, :course_id,
		 :starting_date, :closing_date, :starting_hour, :closing_hour)
	end
end
