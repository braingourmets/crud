# frozen_string_literal: true

source 'https://rubygems.org'

# Rails
gem 'rails', '6.1.3'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use Puma as the app server
gem 'puma'

# Use Haml for HTML templates (http://haml.info)
gem 'haml'
gem 'haml-rails'

# Use SCSS for stylesheets
gem 'sass-rails'

# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster.
gem 'turbolinks'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

group :development, :test do
  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do
  # Provide better error pages
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen'
  gem 'rack-mini-profiler'
  gem 'spring-watcher-listen'
end

group :test do
  # Style checkers
  gem 'haml_lint', require: false
  gem 'rails_best_practices', require: false
  gem 'reek', require: false
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false

  # Security checker
  gem 'bundler-audit', require: false
end
