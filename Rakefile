require "bundler/gem_tasks"

if ENV['CI']
  Rake::Task["release:source_control_push"].clear
  task "release:source_control_push"
end

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
  # no rspec available
end
