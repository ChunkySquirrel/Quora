class Question < ApplicationRecord
  has_many :answers
  belongs_to :user
  has_many :users, through: :answers

end
