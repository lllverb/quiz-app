class Category < ApplicationRecord
  has_many :quizzes
  has_ancestry
end
