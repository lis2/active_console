# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_console/version'

Gem::Specification.new do |spec|
  spec.name          = "active_console"
  spec.version       = ActiveConsole::VERSION
  spec.authors       = ["morhekil","sameera207", "noma4i", "lis2", "halhenke", "gzzengwei"]
  spec.email         = [""]
  spec.description   = %q{Improvements and shortcuts for Rails console}
  spec.summary       = %q{Improvements and shortcuts for Rails console}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.3"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "activerecord", "~> 3.0"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "pry"
end
