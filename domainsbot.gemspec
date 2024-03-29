# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "domainsbot"
  spec.version       = "0.0.1"
  spec.authors       = ["Daniel Westendorf"]
  spec.email         = ["daniel@prowestech.com"]
  spec.summary       = %q{Simple ruby client for domainsbot.com's api}
  spec.description   = %q{Simple ruby client for domainsbot.com's api}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
