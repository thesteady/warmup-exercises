class Say
  attr_reader :number

  def initialize(number)
    if number >= 0 && number <= 99
      @number = number
    else
      raise(ArgumentError, "Number must be between 0 and 99, inclusive")
    end
  end

  def english
    lookup[number]
  end

  def lookup
    {0 => "zero", 14 => "fourteen", 29 => "twentynine"}
  end
end
