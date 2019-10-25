class Quiz < ApplicationRecord
  has_many   :choices
  belongs_to :category
  has_many   :users, through: :favorite
  has_many   :favorites
  accepts_nested_attributes_for :choices
end
