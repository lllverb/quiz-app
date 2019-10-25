class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :quizzes
  has_ancestry
end
