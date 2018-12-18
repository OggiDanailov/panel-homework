class ExamsController < ApplicationController

def new
	@exam = Exam.new
	@cohort = Cohort.find(params[:cohort_id])
end



	def exam_params
		params.require(:exam).permit(:instructor_id, :grade, :student_id, :cohort_id)
	end
end
