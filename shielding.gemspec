# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shielding/version'

Gem::Specification.new do |spec|
  spec.name          = 'shielding'
  spec.version       = Shielding::VERSION
  spec.authors       = ['Chung-Yi Chi']
  spec.email         = ['chung-yi@artsymail.com']
  spec.summary       = 'Shielding is a javascript utility to abort pending AJAX calls'
  spec.description   = 'Shielding is a javascript utility to abort pending AJAX calls'
  spec.homepage      = 'https://github.com/artsy/shielding'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
end
