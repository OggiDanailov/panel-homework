class ExamsController < ApplicationController

def index
	@exams = Exam.all
end

def new
	@exam = Exam.new
	@cohort = Cohort.find(params[:cohort_id])
	@exams = Exam.all
	@grades = [2,3,4,5,6]
end

def create
	@cohort = Cohort.find(params[:cohort_id])
	@exam = @cohort.exams.new(exam_params)
	@exam.student_id = params[:student_id]
	@exam.instructor_id = current_instructor.id
	@exam.save
	redirect_to :controller => 'exams', :action => 'new'
end

def edit

end



	def exam_params
		params.require(:exam).permit(:instructor_id, :grade, :student_id, :cohort_id)
	end
end
