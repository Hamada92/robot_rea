lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "robot/version"

Gem::Specification.new do |spec|
  spec.name          = "robot"
  spec.version       = Robot::VERSION
  spec.authors       = ["Anonymous"]
  spec.email         = ["a@a.com"]

  spec.summary       = %q{robot simulation}
  spec.description   = %q{robot simulation}
  spec.homepage      = "http://test.com"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://test.com"
  spec.metadata["changelog_uri"] = "http://test.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.executables   = ['robot']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "byebug"

end
