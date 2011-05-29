source 'http://rubygems.org'


gem 'rails', '~>3.0.0'
gem 'rake', '~>0.8.7'


gem "carrierwave"
gem "kaminari"
gem "devise"
gem "ruport"
gem "spreadsheet"

def dev_path gem_name
  File.expand_path("../../#{gem_name}",__FILE__)
end

def fallback_req gem_name, *args
  if File.exists?(dev_path(gem_name))
    gem gem_name, :path => dev_path(gem_name) 
  else
    gem gem_name, *args
  end
end

fallback_req "lolita", "~>3.1.6"
fallback_req "lolita-menu"
fallback_req "lolita-file-upload", "~>0.1.2"
fallback_req "lolita-report", "~>0.1.0"
fallback_req "lolita-i18n" if File.exist? dev_path("lolita-i18n")

gem "compass", ">= 0.11.1"
gem "html5-boilerplate"

gem 'sqlite3'

group :development do
  gem "ruby-debug19"
end

gem 'acts-as-taggable-on'
