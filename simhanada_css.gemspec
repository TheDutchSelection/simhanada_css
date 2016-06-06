# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simhanada_css/version'

Gem::Specification.new do |spec|
  spec.name          = "simhanada_css"
  spec.version       = SimhanadaCss::VERSION
  spec.authors       = ["Martijn van Leeuwen"]
  spec.email         = ["m.vanleeuwen@thedutchselection.com"]

  spec.summary       = "Simhanada CSS is the CSS framework we use at TDS"
  spec.homepage      = "https://github.com/TheDutchSelection/simhanada_css"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'autoprefixer-rails', '>= 6.3.6'
  spec.add_runtime_dependency 'bourbon', '>= 4.2.7'
  spec.add_runtime_dependency 'sass-rails', '>= 5.0.4'
end
