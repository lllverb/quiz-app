class Favorite < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
end
