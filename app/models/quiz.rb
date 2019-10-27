class Quiz < ApplicationRecord
  has_many   :choices, dependent: :destroy
  belongs_to :category
  has_many   :users, through: :favorite
  has_many   :favorites
  has_many   :mistakes
  has_many   :judges
  has_many   :users, through: :judges

  accepts_nested_attributes_for :choices
end
