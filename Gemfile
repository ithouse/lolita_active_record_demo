source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'thin', '1.4.1'

gem "lolita", :git => "git://github.com/ithouse/lolita.git", :ref => "817876689c3fadedea3adb405cf4ba6384b0bb4f"
gem "lolita-file-upload", :git => "git://github.com/ithouse/lolita-file-upload.git", :ref => "fff16df659a0c3d8136dbf51556ecc2b24231c2d"

if false && File.exist?(File.expand_path("../lolita-menu"))
  gem 'lolita-menu', :path=>File.expand_path("../../lolita-menu",__FILE__)
else
  gem 'lolita-menu', :git => "git://github.com/ithouse/lolita-menu.git", :ref => "97f6da36ce4240"
end

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'devise', '~> 2.1.2'
gem 'carrierwave', '~> 0.5.8'
gem "haml"
gem "friendly_id", "~> 4.0.1"
gem 'will_paginate', '~> 3.0.0'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'therubyracer', '~> 0.10.1'
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '2.0.1'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :test do 
  gem 'cover_me', '~> 1.2.0'
  gem 'rspec-rails', '~> 2.11.0'
  gem 'capybara', '~> 1.1.2'
  gem 'capybara-webkit', '~> 0.12.1'
  gem 'fabrication', '~> 2.1.0'
  gem 'ffaker', '~> 1.15.0'
  gem 'database_cleaner', '~> 0.8.0'
end
