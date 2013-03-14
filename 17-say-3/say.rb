class Say
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def in_english
    if number >=1_000_000
      if number % 1_000_000 == 0
        "#{number/1_000_000} million"
      else
        div = number/1_000_000
        remainder = number % 1_000_000
        if remainder % 1_000 == 0
          "#{div} million #{remainder/1_000} thousand"
        elsif remainder / 1_000 == 0
          "#{div} million #{remainder}"
        else
          "#{div} million #{remainder/1_000} thousand #{remainder % 1_000}"
        end
      end
    elsif number >= 1_000
      div = number / 1_000
      remainder = number % 1_000
      if remainder != 0
        "#{div} thousand #{remainder}"
      else
        "#{div} thousand"
      end
    else
    return number.to_s
    end
  end

  # def lookup
  #   {
  #     0=> '0',
  #     1
  #     100=> '100'
  #   }
  # end
end
