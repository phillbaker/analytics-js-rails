# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'analytics-js/version'

Gem::Specification.new do |spec|
  spec.name          = "analytics-js-rails"
  spec.version       = AnalyticsJs::VERSION
  spec.authors       = ["Phill Baker"]
  spec.email         = ["phill@generalassemb.ly"]
  spec.description   = %q{A self-hosted copy of Analytics.js, a wrapper for web analytics services, for the Ruby on Rails 3.1+ asset pipeline.}
  spec.summary       = %q{Rails + your app + analytics.js = analytics in all the right places}
  spec.homepage      = "https://github.com/phillbaker/analytics-js-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.1.0"
  spec.add_development_dependency "bundler", ">= 1.0.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
