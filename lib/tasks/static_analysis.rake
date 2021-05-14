# frozen_string_literal: true

desc 'Run all static analysis tasks'
task static_analysis: %i[
  reek rails_best_practices haml_lint rubocop bundler_audit
]
