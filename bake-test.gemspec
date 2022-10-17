# frozen_string_literal: true

require_relative "lib/bake/test/version"

Gem::Specification.new do |spec|
	spec.name = "bake-test"
	spec.version = Bake::Test::VERSION
	
	spec.summary = "Run local test suites without knowing exactly how to run them."
	spec.authors = ["Samuel Williams"]
	spec.license = "MIT"
	
	spec.cert_chain  = ['release.cert']
	spec.signing_key = File.expand_path('~/.gem/release.pem')
	
	spec.homepage = "https://github.com/ioquatix/bake-test"
	
	spec.metadata = {
		"funding_uri" => "https://github.com/sponsors/ioquatix/",
	}
	
	spec.files = Dir.glob('{bake,lib}/**/*', File::FNM_DOTMATCH, base: __dir__)
	
	spec.add_dependency "bake"
	
	spec.add_development_dependency "sus"
end
