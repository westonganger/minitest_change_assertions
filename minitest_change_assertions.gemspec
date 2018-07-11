lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'minitest_change_assertions/version.rb'

Gem::Specification.new do |s|
  s.name        = 'minitest_change_assertions'
  s.version     =  MinitestChangeAssertions::VERSION
  s.author	= "Weston Ganger"
  s.email       = 'weston@westonganger.com'
  s.homepage 	= 'https://github.com/westonganger/minitest_change_assertions'
  
  s.summary     = 'Provides assertions for your Minitest suite to determine if an object has been changed.'
  s.description = s.summary
  s.files = Dir.glob("{lib/**/*}") + %w{ LICENSE README.md Rakefile CHANGELOG.md }
  s.test_files  = Dir.glob("{test/**/*}")

  s.add_dependency 'minitest'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'bundler'

  s.required_ruby_version = '>= 1.9.3'
  s.require_path = 'lib'
end
