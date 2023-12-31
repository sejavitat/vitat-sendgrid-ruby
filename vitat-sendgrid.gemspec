# frozen_string_literal: true

require_relative "lib/vitat/sendgrid/version"

Gem::Specification.new do |spec|
  spec.name = "vitat-sendgrid"
  spec.version = Vitat::Sendgrid::VERSION
  spec.authors = ["Julia Frederico"]
  spec.email = ["magalhaesjulia@id.uff.br"]

  spec.summary = "Vitat Sendgrid"
  spec.description = "Ruby Gem para enviar emails via Sendgrid."
  spec.homepage = "https://github.com/sejavitat/vitat-sendgrid"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sejavitat/vitat-sendgrid"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "sendgrid-ruby"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
