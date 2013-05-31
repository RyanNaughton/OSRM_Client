# -*- encoding: utf-8 -*-
$:.unshift File.expand_path('../lib', __FILE__)
require 'osrm/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Ryan Naughton"]
  gem.email         = ["ryan.j.naughton@gmail.com"]
  gem.description   = %q{Provides a consistent interface for working with osrm.}
  gem.summary       = %q{OSRM Client Library}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "osrm"
  gem.require_paths = ["lib"]
  gem.version       = Osrm::VERSION

  gem.add_dependency('httparty')
  gem.add_dependency('sinatra')
  gem.add_dependency('addressable')
  gem.add_dependency('activemodel')
  gem.add_dependency('rgeo')
  gem.add_dependency('rgeo-geojson')
  gem.add_dependency('polylines')
end
