require 'optparse'

module PrimeFactorization
  class Parser
    def initialize(argv)
      @argv = argv
    end

    def parse
      optparse = OptionParser.new do |opts|
        opts.banner = "Usage: #{$0} --number NUMBER"

        opts.on("-n", "--number NUMBER", "Target number (must be an integer > 1)") do |n|
          @number = n
        end

        opts.on( '-h', '--help', 'Display this screen' ) do
          puts opts
          exit
        end
      end

      optparse.parse(argv)

      abort(optparse.help) if invalid_input?
      number.to_i
    end

    private

    def invalid_input?
      argv.length < 2 || number.nil? || number != number.to_i.to_s
    end

    attr_reader :number, :argv
  end
end