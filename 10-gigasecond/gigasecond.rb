#1 billion seconds

require 'date'
class SecondsToYears
  def initialize(seconds = 1000000000)
    @seconds = seconds
  end

  def toYears
    minutes = @seconds/60
    hours = minutes/60
    days = hours/24
    years = days/365

    puts "years: #{years}"
  end
end

puts "How old were you when you turned 1 gigasecond?"
input = gets.chomp.to_i
time_selected = SecondsToYears.new(input)
time_selected.toYears
