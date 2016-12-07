# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/git_status/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-git_status'
  spec.version       = Fastlane::GitStatus::VERSION
  spec.author        = %q{Bruno Coelho}
  spec.email         = %q{Bruno.Coelho@medicineone.net}

  spec.summary       = %q{Show the status of one or multiple files/directories}
  spec.homepage      = "https://github.com/4brunu/fastlane-plugin-git_status"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 1.111.0'
end
