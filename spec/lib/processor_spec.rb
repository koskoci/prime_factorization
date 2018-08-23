require 'prime'

require_relative '../spec_helper'
require_relative "../../lib/processor"

module PrimeFactorization
  RSpec.describe Processor do
    let(:target) { rand(1000..10000) }
    let(:prime_factorisation) do
      Prime.prime_division(target).inject([]) do |acc, i|
        i[1].times { acc << i[0] }
        acc
      end
    end

    it "returns the correct prime factorisation" do
      expect(described_class.new(target).process).to eq prime_factorisation
    end

    context "when the target number is a prime" do
      let(:target) { Prime.each(10000).to_a.sample }

      it "returns the target number in an array" do
        expect(described_class.new(target).process).to eq prime_factorisation
      end
    end
  end
end