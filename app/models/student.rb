class Student < ApplicationRecord
 has_and_belongs_to_many :cohorts, optional: true
 has_many :comments
 has_many :exams


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
