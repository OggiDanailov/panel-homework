class Instructor < ApplicationRecord
has_many :cohorts
has_many :articles 
has_many :comments
has_many :exams
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
