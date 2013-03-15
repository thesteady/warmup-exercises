class Say
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def in_english
    if number >=1_000_000
      millions
    elsif number >= 1_000
      thousands
    else
    less_than_thousands
    end
  end

  def millions
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
  end

  def thousands
    div = number / 1_000
    remainder = number % 1_000
    if remainder != 0
      "#{div} thousand #{remainder}"
    else
      "#{div} thousand"
    end
  end

  def less_than_thousands
    return number.to_s
  end
end
