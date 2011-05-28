source 'http://rubygems.org'

gem 'rails', '~>3.0.0'


gem "carrierwave"
gem "kaminari"
gem "devise"
gem "ruport"
gem "spreadsheet"

if File.exist?(File.expand_path("../../lolita",__FILE__))
  gem 'lolita', :path=>File.expand_path("../../lolita",__FILE__)
  gem 'lolita-menu', :path=>File.expand_path("../../lolita-menu",__FILE__)
  gem 'lolita-file-upload', :path=>File.expand_path("../../lolita-file-upload",__FILE__)
  gem 'lolita-report', :path=>File.expand_path("../../lolita-report",__FILE__)
  gem 'lolita-i18n', :path=>File.expand_path("../../lolita-i18n",__FILE__)
else
  gem "lolita", "~> 3.1.6"
  gem "lolita-report", "~>0.1.0"
  gem "lolita-file-upload", "~>0.1.2"
  gem "lolita-menu"
end

gem 'sqlite3'

group :development do
  gem "ruby-debug19"
end
