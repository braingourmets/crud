# frozen_string_literal: true

namespace :bundle_audit do
  desc 'Update bundle-audit database'
  task update: :environment do
    require 'bundler/audit/cli'
    Bundler::Audit::CLI.new.update
  end

  desc 'Check gems for vulnerabilities using bundle-audit'
  task check: :environment do
    require 'bundler/audit/cli'
    Bundler::Audit::CLI.new.check
  end

  desc 'Update vulnerabilities database and check gems using bundle-audit'
  task run: :environment do
    Rake::Task['bundle_audit:update'].invoke
    Rake::Task['bundle_audit:check'].invoke
  end
end

desc 'Run bundler-audit'
task bundle_audit: :environment do
  Rake::Task['bundle_audit:run'].invoke
end
