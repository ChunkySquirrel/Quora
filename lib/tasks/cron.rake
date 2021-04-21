namespace :sample do
   desc 'saying hi to cron'
     task :test => [ :environment ] do

       UserMailer.welcome_email(@user).deliver

          end
        end
