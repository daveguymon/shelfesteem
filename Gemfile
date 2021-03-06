# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.5"

# Row-level multitenancy for Ruby on Rails apps.
gem "acts_as_tenant"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web. http://getbootstrap.com
gem "bootstrap", "~> 5.1", ">= 5.1.3"

# User authentication
gem "devise"

# HTTP/REST API client library.
gem "faraday", "~> 2.2"

# Simple, Heroku-friendly Rails app configuration using ENV and a single YAML file
gem "figaro", "~> 1.1", ">= 1.1.1"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# A generalized Rack framework for multiple-provider authentication.
gem "omniauth"

#  A Google OAuth2 strategy for OmniAuth 1.x. This allows you to login to Google with your ruby app.
gem "omniauth-google-oauth2"

# This gem provides a mitigation against CVE-2015-9284 (Cross-Site Request Forgery on the request phrase when using OmniAuth gem with a Ruby on Rails application) by implementing a CSRF token verifier that directly utilize `ActionController::RequestForgeryProtection` code from Rails
gem "omniauth-rails_csrf_protection"

# Ruby interface to the PostgreSQL RDBMS. It works with PostgreSQL 9.3 and later.
gem "pg", "~> 1.3", ">= 1.3.5"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.2", ">= 7.0.2.3"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Use Sass to process CSS
gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]

  gem "rubocop", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
