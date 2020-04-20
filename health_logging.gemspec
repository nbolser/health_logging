require_relative 'lib/health_logging/version'

Gem::Specification.new do |spec|
  spec.name          = "health_logging"
  spec.version       = HealthLogging::VERSION
  spec.authors       = ["'Nathan Bolser'"]
  spec.email         = ["'nbolser@gmail.com'"]

  spec.summary       = %q{Logging.}
  spec.homepage      = "https://rubygems.org/gems/health_logging"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/nbolser"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nbolser"
  spec.metadata["changelog_uri"] = "https://github.com/nbolser"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
