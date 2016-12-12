# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

require 'rubocop/rake_task'

RuboCop::RakeTask.new(:rubocop) do |task|
  task.options = ['-DRS']
  task.fail_on_error = true
end

Rails.application.load_tasks

task(:default).clear
task default: %i(rubocop spec)
