namespace :sample do

  desc'hi'
  task :test => [:environment] do

    UserMailer.welcome_email(@user).deliver
  end
end
