module ExamsHelper
	def all_exams
		Exam.all.map {|e| e }
	end
end
