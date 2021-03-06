# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dashing/version'

Gem::Specification.new do |spec|
  spec.name         = 'dashing-rails-static'
  spec.version      = Dashing::VERSION
  spec.authors      = ['NA']
  spec.email        = ['nir@ondigo.me']
  spec.description  = 'basked on github.com/gottfrois/dashing-rails '
  spec.summary      = 'same idea , without the jobs'
  spec.homepage     = ''
  spec.license      = 'MIT'

  spec.files        = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails',                     '~> 4.0.0'
  spec.add_dependency 'jquery-rails',              '~> 3.0'
  spec.add_dependency 'coffee-script',             '~> 2.2'
  spec.add_dependency 'rufus-scheduler',           '~> 3.0'
  spec.add_dependency 'redis',                     '~> 3.0'
  spec.add_dependency 'connection_pool',           '~> 1.1'

  spec.add_development_dependency 'rspec-rails',   '~> 2.14'
  spec.add_development_dependency 'pry-rails',     '~> 0.3'
  spec.add_development_dependency 'better_errors', '~> 1.0'
end
