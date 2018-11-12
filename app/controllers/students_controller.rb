class StudentsController < ApplicationController
	before_action :authenticate_student!, :except => [:index]

	def index
		@students = Student.all
		@student = current_student
	end

	def show
		@student = current_student
		puts "the cohort id is #{ @student.cohort_id}"
	end

	def assign
		student = Student.find(current_student.id)
		student.update(student_params)
		student.save
		redirect_to "/students"
	end

	private

	def student_params
		params.require(:student).permit(:cohort_id, :email, :fname, :lname, :age)
	end

end
