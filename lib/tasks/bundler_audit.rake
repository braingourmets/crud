# frozen_string_literal: true

namespace :bundler_audit do
  desc 'Update bundler-audit database'
  task update: :environment do
    require 'bundler/audit/cli'
    Bundler::Audit::CLI.start(['update'])
  end

  desc 'Check gems for vulnerabilities using bundler-audit'
  task check: :environment do
    require 'bundler/audit/cli'
    Bundler::Audit::CLI.start(['check'])
  end

  desc 'Update vulnerabilities database and check gems using bundler-audit'
  task run: :environment do
    Rake::Task['bundler_audit:update'].invoke
    Rake::Task['bundler_audit:check'].invoke
  end
end

desc 'Run bundler-audit'
task bundler_audit: :environment do
  Rake::Task['bundler_audit:run'].invoke
end
