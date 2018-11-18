class Article < ApplicationRecord
	belongs_to :instructor
	has_many :comments


	SUBJECTS = ["history", "biology", "geography", "chemestry", "mathematics", "physics", "literature", "philosophy"]
	validates_inclusion_of :category, :in => SUBJECTS
end
