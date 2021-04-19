require 'rake'
namespace :task_namespace do
  desc 'task description'
  task :send_mail => :environment do
    # call Listing method to send mail
    Users.last
  end
end
