
lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "just_the_facts/version"

Gem::Specification.new do |spec|
  spec.name          = "just_the_facts"
  spec.version       = JustTheFacts::VERSION
  spec.authors       = ["sedx876"]
  spec.email         = ["52286148+sedx876@users.noreply.github.com"]

  spec.summary       = "Just the Facts"
  spec.description   = "Just a small app to get weird and interesting facts."
  spec.homepage      = "https://github.com/sedx876/just_the_facts.git"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["https://github.com/sedx876/just_the_facts.git"] = spec.homepage
  spec.metadata["https://github.com/sedx876/just_the_facts.git"] = "https://github.com/sedx876/just_the_facts.git"
  spec.metadata["https://github.com/sedx876/just_the_facts.git"] = "https://github.com/sedx876/just_the_facts.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "colorize"

end
