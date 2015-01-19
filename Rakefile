require "bundler/gem_tasks"

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end

task default: :spec

task :sync do
  require 'story_time'
  StoryTime.sync
end
