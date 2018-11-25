class Comment < ApplicationRecord
	validates :content, presence: true

	belongs_to :instructor, optional: true
	belongs_to :student, optional: true
	belongs_to :article
end
