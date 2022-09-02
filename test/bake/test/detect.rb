require 'bake/test'

with "current bake-test repository" do
	let(:root) {File.expand_path('../../../', __dir__)}

	it "can detect the test runner" do
		expect(Bake::Test.detect(root)).to be == :sus
	end
end

with "rspec style project" do
	let(:root) {File.expand_path('.fixtures/rspec', __dir__)}

	it "can detect the test runner" do
		expect(Bake::Test.detect(root)).to be == :rspec
	end
end

with "sus style project" do
	let(:root) {File.expand_path('.fixtures/sus', __dir__)}

	it "can detect the test runner" do
		expect(Bake::Test.detect(root)).to be == :sus
	end
end

with "rake style project" do
	let(:root) {File.expand_path('.fixtures/rake', __dir__)}

	it "can detect the test runner" do
		expect(Bake::Test.detect(root)).to be == :rake
	end
end
