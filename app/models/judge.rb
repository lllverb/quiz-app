class Judge < ApplicationRecord
  validates :quiz_id, presence: true, uniqueness: { scope: :user_id }
  validates :user_id, presence: true, uniqueness: { scope: :quiz_id }
  belongs_to :quiz
  belongs_to :user
end
