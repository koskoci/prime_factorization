module PrimeFactorization
  class Presenter
    def initialize(array)
      @array = array
    end

    def present
      array.join(", ")
    end

    private

    attr_reader :array
  end
end