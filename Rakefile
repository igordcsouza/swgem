require 'bundler'
Bundler::GemHelper.install_tasks
require 'rake/testtask'
require 'yard'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

YARD::Rake::YardocTask.new do |t|
 t.options = ["-odoc/api"]
end

desc "Run tests"
task :default => :test
