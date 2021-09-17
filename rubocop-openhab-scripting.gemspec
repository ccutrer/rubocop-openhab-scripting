# frozen_string_literal: true

require_relative "lib/rubocop/openhab/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-openhab-scripting"
  spec.version       = RuboCop::OpenHAB::VERSION
  spec.authors       = ["Cody Cutrer"]
  spec.email         = ["cody@cutrer.us"]

  spec.summary       = "RuboCop cops for openhab-scripting rules"
  spec.homepage      = "https://github.com/ccutrer/rubocop-openhab-scripting"
  spec.license       = "MIT"
  spec.required_ruby_version = "~> 2.5"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ccutrer/rubocop-openhab-scripting"

  spec.files = Dir["{config,lib}/**/*"]

  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 1.21"

  spec.add_development_dependency "byebug", "~> 11.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.10"
  spec.add_development_dependency "rubocop-rake", "~> 0.6"
  spec.add_development_dependency "rubocop-rspec", "~> 2.4"
end
