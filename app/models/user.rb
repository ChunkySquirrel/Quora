class User < ApplicationRecord
  has_many :questions
  has_many :answers
  has_many :questions, through: :answers, dependent: :destroy

  scope:confirmedUsers , -> {where.not(confirmed_at: nil)}
  scope:unconfirmedUsers , -> {where(confirmed_at: nil)}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
end
