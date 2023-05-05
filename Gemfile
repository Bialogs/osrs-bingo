# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.4'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use the new rails bundling system and asset pipelint
gem 'cssbundling-rails'
gem 'jsbundling-rails'
gem 'propshaft'

# Use AnyLogin for easy switching between users
gem 'any_login'

# Use Omniauth for handing Google logins
gem "omniauth"
gem "omniauth_openid_connect"
gem "omniauth-rails_csrf_protection", "~> 1.0"

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing', '~> 1.2'

gem 'audited'
gem 'devise'
gem 'devise-security'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem "dotenv-rails"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
  gem 'brakeman'
  gem 'erb_lint'
  gem 'rubocop'
  gem 'rubocop-capybara'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'timecop'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'faker'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
