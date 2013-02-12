class Year

  def initialize(input_year)
   @year = input_year
   puts @year.class
   puts "Your year is #{@year}."
  end

  def leap?
    puts "testing..."

    divisible_by_4 = (@year % 4 == 0)
    divisible_by_100 = (@year % 100 == 0)
    divisible_by_400 = (@year % 400 == 0)

    divisible_by_4 || (!divisible_by_100 || divisible_by_400)
  end

puts "Starting Leap Year Finder."
Year.new(1996).leap?
