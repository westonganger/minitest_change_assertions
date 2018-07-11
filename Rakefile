require File.expand_path(File.dirname(__FILE__) + '/lib/minitest_change_assertions/version.rb')
require 'bundler/gem_tasks'

task :test do 
  require 'rake/testtask'

  Rake::TestTask.new do |t|
    t.libs << 'test'
    t.test_files = FileList['test/**/*_test.rb']
    t.verbose = true
  end
end

task :console do
  require 'minitest_change_assertions'

  require 'irb'
  binding.irb
end

task default: :test
