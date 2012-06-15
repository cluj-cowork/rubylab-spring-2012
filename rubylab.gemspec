# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rubylab/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Stas SUȘCOV"]
  gem.email         = ["stas@net.utcluj.ro"]
  gem.description   = %q{Rubylab, primul gem}
  gem.summary       = %q{Primul nostru gem.}
  gem.homepage      = "http://clujcowork.ro"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rubylab"
  gem.require_paths = ["lib"]
  gem.version       = Rubylab::VERSION
  
  # Dependinte
  gem.add_dependency('tinder')
  
  # Dependinte pentru dezvoltare
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('simplecov')
end
