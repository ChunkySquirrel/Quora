class UserMailer < ApplicationMailer

  default :from => "kotoricdino52069@gmail.com"

  def welcome_email(user)
    @user= user
    mail(:to =>User.try(:email), :subject=>"Wilkomen")
  end
end
