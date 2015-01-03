# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'LiczbyZespolone/version'

Gem::Specification.new do |spec|
  spec.name          = "LiczbyZespolone"
  spec.version       = LiczbyZespolone::VERSION
  spec.author        = "ljadanowski"
  spec.email         = "lukasz.jadanowski@gmail.com"
  spec.summary       = "My first gems for calculate complex number"
  spec.description   = "Wykonuje podstawowe operacje na liczbach zespolonych"
  spec.homepage      = "http://rubygems.org/gems/Liczby-Zespolone"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
