class Comment < ApplicationRecord
	belongs_to :instructor, optional: true
	belongs_to :student, optional: true
	belongs_to :article
end
