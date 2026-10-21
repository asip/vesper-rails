# frozen_string_literal: true

require_relative "lib/vesper/version"

Gem::Specification.new do |spec|
  spec.name = "vesper-rails"
  spec.version = Vesper::VERSION
  spec.authors = ["Yasumasa Ashida"]
  spec.email = ["ys.ashida@gmail.com"]

  spec.summary = "Vesper Rails"
  spec.homepage = "https://github.com/asip/vesper-rails"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.0"
  # spec.metadata["allowed_push_host"] = "https://rubygems.org"
  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "https://github.com/asip/vesper-rails"
  # spec.metadata["changelog_uri"] = "https://github.com/asip/vesper-rails/CHANGELOG.md"

  # Uncomment the line below to require MFA for gem pushes.
  # This helps protect your gem from supply chain attacks by ensuring
  # no one can publish a new version without multi-factor authentication.
  # See: https://guides.rubygems.org/mfa-requirement-opt-in/
  # spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[Gemfile .gitignore .rubocop.yml])
    end
  end
  # spec.bindir = "exe"
  # spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_runtime_dependency(%q<railties>, [">= 7.0"])
  spec.add_runtime_dependency(%q<activemodel>, [">= 7.0"])
  spec.add_dependency "alba", ">= 4.0.0"
  spec.add_dependency "oj", ">= 3.17.7"
  spec.add_dependency "typelizer", ">= 0.14.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://guides.rubygems.org/make-your-own-gem/
end
