require 'bake/test'

let(:root) {File.expand_path('../../', __dir__)}

it "can detect the test runner" do
	expect(Bake::Test.detect(root)).to be == :sus
end
