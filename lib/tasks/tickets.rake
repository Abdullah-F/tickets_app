require 'rake'

namespace :tickets do
  desc "it reminds users with their tickets' due_date"
  task :send_due_date_reminders => :environment do
    puts "hello"
  end
end
