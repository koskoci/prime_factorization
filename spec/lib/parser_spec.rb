require_relative "../../lib/parser"

module PrimeFactorization
  RSpec.describe Parser do
    subject { described_class.new(argv) }

    describe "#parse" do
      let(:argv) { ["--number", "10"] }

      it "returns the target number" do
        expect(subject.parse).to eq 10
      end
    end
  end
end