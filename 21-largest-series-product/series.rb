class Series
  attr_reader :digits, :ar

  def initialize(number)
    @digits = number.split("").map {|n| n.to_i}
  end

  def slices
    digits.each_with_index do {|num, i| }
  end

  def largest_product(num_of_digits)
    # series = Series.new("0123456789")
    # assert_equal 72, series.largest_product(2)
    digits

    nums_to_multipy = []
    num_of_digits.times do
      biggest_num = digits[-1]
      nums_to_multipy << biggest_num
      digits.pop
    end
    nums_to_multipy.inject(:*)
    # i = 0
    # total = 0
    # while i <= digits.count
    #   puts "first num #{array[i].inspect}"
    #   puts array[i+1]
    #   subtotal += array[i] * array[i+1]
    #   i += 1
    # end
    # total += subtotal unless subtotal == 0
  end

end
