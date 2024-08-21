# frozen_string_literal: true

require_relative "lib/bake/test/version"

Gem::Specification.new do |spec|
	spec.name = "bake-test"
	spec.version = Bake::Test::VERSION
	
	spec.summary = "Run local test suites without knowing exactly how to run them."
	spec.authors = ["Samuel Williams", "Felix Yan"]
	spec.license = "MIT"
	
	spec.cert_chain  = ['release.cert']
	spec.signing_key = File.expand_path('~/.gem/release.pem')
	
	spec.homepage = "https://github.com/ioquatix/bake-test"
	
	spec.metadata = {
		"funding_uri" => "https://github.com/sponsors/ioquatix/",
		"source_code_uri" => "https://github.com/ioquatix/bake-test.git",
	}
	
	spec.files = Dir.glob(['{bake,lib}/**/*', '*.md'], File::FNM_DOTMATCH, base: __dir__)
	
	spec.required_ruby_version = ">= 3.1"
	
	spec.add_dependency "bake"
end
