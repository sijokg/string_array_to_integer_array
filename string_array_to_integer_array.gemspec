# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'string_array_to_integer_array/version'

Gem::Specification.new do |s|
  s.name          = "string_array_to_integer_array"
  s.version       = StringArrayToIntegerArray::VERSION
  s.authors       = ["Sijo K George"]
  s.email         = ["cijo_k_george@yahoo.co.in"]
  s.description   = %q{Gem to convert a string array input to integer array input}
  s.summary       = %q{Gem to convert a string array input to integer array input}
  s.homepage      = ""
  s.license       = "MIT"

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", "~> 2.14.1"
end
