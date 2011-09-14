# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sinatra-statsd-helper"

Gem::Specification.new do |s|
  s.name        = "sinatra-statsd-helper"
  s.version     = Sinatra::Helpers::Statsd::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = 'A Sinatra helper to wrap danielsdeleo/opscode\'s Statsd Rack middleware'
  s.description = 'sinatra-statsd-helper is a thin wrapper around danielsdeleo/opscode\'s Statsd Rack middleware'

  s.required_ruby_version     = ">= 1.8.7"
  s.required_rubygems_version = ">= 1.3.6"

  s.authors     = ["Michael Leinartas"]
  s.email       = ["mleinartas@gmail.com"]
  s.homepage    = "https://github.com/mleinartas/stator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = []
  s.require_path  = 'lib'

  s.add_dependency "sinatra", ">= 1.0"
end
