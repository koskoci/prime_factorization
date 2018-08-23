require_relative "../../lib/presenter"

module PrimeFactorization
  RSpec.describe Presenter do
    subject { described_class.new(array) }

    let(:array) { [1, 2, 3, 4] }
    let(:output) { "1, 2, 3, 4" }

    describe "#present" do
      it "returns the desired output" do
        expect(subject.present).to eq output
      end
    end
  end
end