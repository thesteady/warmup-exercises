class Sieve
  attr_reader :range
  def initialize(end_number)
    @range = (2..end_number).to_a
  end

  def primes
    range.each do |digit|
      range.reject! {|num| (num / digit != 1) && (num % digit == 0) }
    end
    range
  end
end
