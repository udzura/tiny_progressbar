# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tiny_progressbar/version'

Gem::Specification.new do |gem|
  gem.name          = "tiny_progressbar"
  gem.version       = TinyProgressbar::VERSION
  gem.authors       = ["Uchio KONDO"]
  gem.email         = ["udzura@udzura.jp"]
  gem.description   = %q{this is a gem description}
  gem.summary       = %q{this is a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
end
