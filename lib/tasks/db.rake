namespace :db do
  desc "Backup Demo MySQL database"
  task :backup => :environment do
    config = get_db_config
    system "mysqldump --opt --user=#{config[:username]} --password=#{config[:password]} #{config[:database]} > #{backup_filename}"
  end
end

namespace :db do
  desc "Restore Demo MySQL database"
  task :restore => :environment  do
    config = get_db_config
    system "mysql --user=#{config[:username]} --password=#{config[:password]} #{config[:database]} < #{backup_filename}"
  end
end

def backup_filename
  File.join(Rails.root, "..", "..", "shared", "system", "db_backup.sql")
end

def get_db_config
  ActiveRecord::Base.connection.instance_variable_get(:@config)
end
