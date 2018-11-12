class Cohort < ApplicationRecord
belongs_to :instructor
has_and_belongs_to_many :students
belongs_to :course
end
