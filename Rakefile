#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rspec/core/rake_task'

task :default => :spec

desc 'Run specs'
RSpec::Core::RakeTask.new(:spec)

desc 'Run specs with coverage'
task :coverage do
  ENV['COVERAGE'] = 'true'
  Rake::Task[:spec].execute
end

