class Article < ApplicationRecord
	belongs_to :instructor
	has_many :comments
end
