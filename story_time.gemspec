# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'story_time/version'

Gem::Specification.new do |spec|
  spec.name          = "story_time"
  spec.version       = StoryTime::VERSION
  spec.authors       = ["Joe Sak"]
  spec.email         = ["joe@joesak.com"]
  spec.summary       = %q{Track time on stories}
  spec.description   = %q{Track time on stories}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "dotenv", '~> 1.0'

  spec.add_dependency 'harvested', '~> 3.1'
  spec.add_dependency 'pivotal-tracker', '~> 0.5'
end
