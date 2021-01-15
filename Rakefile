# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be
# available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

Rake::Task['test'].clear
task default: :ci

desc 'Run style checkers and RSpec.'
task ci: %i[rubocop reek rails_best_practices bundler_audit]

desc 'Run RuboCop for checking the Ruby files.'
task rubocop: :environment do
  sh 'rubocop app/ db/seeds.rb Gemfile lib/ Rakefile'
end

desc 'Run Reek to check for code smells.'
task reek: :environment do
  sh 'reek -c config/defaults.reek app/ db/seeds.rb Gemfile Rakefile ' \
    'config/routes.rb'
end

desc 'Run rails_best_practices to check the way Rails is used'
task rails_best_practices: :environment do
  sh 'rails_best_practices'
end

desc 'Style-check the HAML files'
task haml_lint: :environment do
  sh 'haml-lint app/views/'
end
