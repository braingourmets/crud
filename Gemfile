# frozen_string_literal: true

source 'https://rubygems.org'

# Rails
gem 'rails', '6.1.6.1'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use Puma as the app server
gem 'puma'

# Use Haml for HTML templates (http://haml.info)
gem 'haml'
gem 'haml-rails'

# Use SCSS for stylesheets
gem 'cssbundling-rails'
gem 'jsbundling-rails'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Temporarily needed for some other gem.
gem 'net-smtp'

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
  # Psych 4 currently breaks with YAML aliases, probably in the DB
  # configuration. This might also be a bug in webpacker.
  gem 'psych', '<4'
  gem 'reek', require: false
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false

  # Security checker
  gem 'bundler-audit', require: false
end
