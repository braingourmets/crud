# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be
# available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

Rake::Task['test'].clear
task default: :ci

desc 'Run all CI tasks, including RSpec and static code analysis'
task ci: %i[rubocop reek rails_best_practices haml_lint bundle_audit]

desc 'Run RuboCop'
task rubocop: :environment do
  sh 'rubocop app/ db/seeds.rb Gemfile lib/ Rakefile'
end

desc 'Run Reek'
task reek: :environment do
  sh 'reek -c config/defaults.reek app/ db/seeds.rb Gemfile Rakefile ' \
    'config/routes.rb'
end

desc 'Run rails_best_practices'
task rails_best_practices: :environment do
  sh 'rails_best_practices'
end

desc 'Run haml-lint'
task haml_lint: :environment do
  sh 'haml-lint app/views/'
end
