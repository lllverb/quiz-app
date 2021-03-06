class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :quizzes, through: :favorites
  has_many :favorites
  has_many :mistakes
  has_many :judges
  has_many :quizzes, through: :judges
end