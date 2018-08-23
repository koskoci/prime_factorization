#!/usr/bin/ruby

require_relative "./lib/parser"
require_relative "./lib/processor"
require_relative "./lib/presenter"

parsed = PrimeFactorization::Parser.new(ARGV).parse
processed = PrimeFactorization::Processor.new(parsed).process
presented = PrimeFactorization::Presenter.new(processed).present
puts presented
