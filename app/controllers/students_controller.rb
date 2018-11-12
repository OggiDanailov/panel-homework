class StudentsController < ApplicationController
	before_action :authenticate_student!, :except => [:index]

	def index
		@students = Student.all
		@student = current_student
	end

	def show
		@student = current_student
		@student_cohorts = @student.cohorts
		@cohorts = Cohort.all

	end

	def assign
		student = Student.find(current_student.id)
		cohort = Cohort.find(params[:cohortid])
		student.cohorts << cohort
		redirect_to "/student/#{student.id}"
	end

	private

	def student_params
		params.require(:student).permit(:email, :fname, :lname, :age)
	end

end
