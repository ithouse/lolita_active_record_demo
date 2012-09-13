namespace :uploads do
  desc "Backup uploads"
  task :backup => :environment do
    create_backup_dir
    system "cp -p --recursive #{uploads_dir} #{backup_dir}"
  end
end

namespace :uploads do
  desc "Restore uploads"
  task :restore => :environment  do
    system "cp -p --recursive #{backup_dir_for_restore} #{uploads_dir_for_restore}"
  end
end

def system_dir
  File.join(Rails.root, "..", "..", "shared", "system")
end

def uploads_dir
  File.join(system_dir, "uploads")
end

def backup_dir
  File.join(system_dir, "uploads_backup")
end

def backup_dir_for_restore
  File.join(backup_dir, "uploads")
end

def uploads_dir_for_restore
  File.join(system_dir)
end

def create_backup_dir
  FileUtils.mkdir_p(backup_dir) unless File.exists?(backup_dir)
end

