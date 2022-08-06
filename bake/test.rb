# frozen_string_literal: true

def initialize(context)
	super

	require_relative '../lib/bake/test'
end

# Run tests for the given project.
# @parameter root [String] the root directory of the project to run tests for.
def test(root: context.root)
	if method = ::Bake::Test.detect(root)
		::Bake::Test::Runner.public_send(method, root) or abort
	else
		raise "No test runner found!"
	end
end
