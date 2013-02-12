class Year

  def initialize(input_year)
   @year = input_year
   puts @year.class

   puts "Your year is #{@year}."
  end

  def leap?
    puts "testing..."

    if @year % 4 == 0
      puts "Divisible by 4"
      if @year % 100 == even?
        #need to check if even
        puts "Divisible by 100."
        if @year % 400 == 00
          puts "Divisible by 400."
        else "Not a leap year 400."
        end
      else
        puts "Not leap year."
      end
    else 
      puts "Not a leap year."
    end
  end
end

puts "Starting Leap Year Finder."
Year.new(1996).leap?
