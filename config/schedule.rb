set :environment, ENV['RAILS_ENV']
set :output, "log/cron.log"

every 1.minute do
  rake 'tickets:send_due_date_reminders'
end
