set :environment, ENV['RAILS_ENV']

every 2.hours do
  rake "uploads:restore"
  rake "db:restore"
end