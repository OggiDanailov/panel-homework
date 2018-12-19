class Exam < ApplicationRecord
	belongs_to :cohort
	belongs_to :instructor
	belongs_to :student
end
