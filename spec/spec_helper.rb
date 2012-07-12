# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'bundler'
ENV["RAILS_ENV"] ||= 'test'
require 'cover_me'
require File.expand_path("../../config/environment", __FILE__)
require 'database_cleaner'
require 'rspec/rails'
require 'capybara/rails'
require 'capybara/rspec'
Capybara.default_driver = :webkit

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
require Rails.root.join("spec/env.rb")

RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
  include Warden::Test::Helpers
  Warden.test_mode!

  config.mock_with :rspec
  config.use_transactional_fixtures = false

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:all, :request => true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
    Warden.test_reset!
  end

  config.after(:all, :request => true) do
    DatabaseCleaner.strategy = :transaction
  end

  config.include LolitaActiveRecordDemoTestHelpers
end

at_exit do
 CoverMe.complete!
end
