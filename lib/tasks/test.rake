namespace :sample do
   desc 'saying hi to cron'
     task :test => [ :environment ] do


       def show

        render "index", :alert => 'Ask a question!'

      end

          end
        end
