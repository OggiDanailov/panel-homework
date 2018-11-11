class Cohort < ApplicationRecord
belongs_to :instructor
has_many :students
belongs_to :course
end
