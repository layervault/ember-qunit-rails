# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ember-qunit-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "ember-qunit-rails"
  spec.version       = EmberQunitRails::VERSION
  spec.authors       = ["Ben Colon"]
  spec.email         = ["ben@colon.com.fr"]
  spec.summary       = "ember-qunit Javascript lib for Rails"
  spec.description   = "ember-qunit Javascript lib packaged for the Rails asset pipeline"
  spec.homepage      = "https://github.com/bencolon/ember-qunit-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency "railties", "> 3.1"
end
