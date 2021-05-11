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

  devise :omniauthable, omniauth_providers: %i[facebook]


  def self.from_omniauth(auth)
  name_split = auth.info.name.split(" ")
  user = User.where(email: auth.info.email).first
  user ||= User.create!(provider: auth.provider, uid: auth.uid, name: name_split[0], email: auth.info.email, password: Devise.friendly_token[0, 20])
    user
end
end
