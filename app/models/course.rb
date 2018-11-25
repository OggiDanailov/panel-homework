class Course < ApplicationRecord
	validates :name, presence: true
	validates :total, presence: true

has_many :cohorts
end
